require 'rdf'
require 'rdf/json'
require 'rdf/vocab'
require 'erb'
require 'linkeddata'
require 'fileutils' # Add this line to fix the error

# Check if a filename is provided as a parameter
if ARGV.empty?
  puts "Usage: ruby generate_skos.rb <input_file.jsonld>"
  exit
end

# Load the SKOS file from the provided filename
file_path = ARGV[0]
unless File.exist?(file_path)
  puts "Error: File '#{file_path}' not found."
  exit
end

graph = RDF::Graph.load(file_path, format: :jsonld)

# Helper method to recursively fetch narrower concepts
def fetch_narrower_concepts(graph, concept)
  narrower_concepts = []
  graph.query([:narrower, RDF::Vocab::SKOS.broader, concept]).each do |statement|
    narrower_concepts << {
      uri: statement.subject.to_s,
      label: graph.query([statement.subject, RDF::Vocab::SKOS.prefLabel, nil]).first&.object&.to_s,
      narrower: fetch_narrower_concepts(graph, statement.subject)
    }
  end
  narrower_concepts
end

# Fetch all top-level concepts
top_level_concepts = []
graph.query([:concept, RDF::Vocab::SKOS.topConceptOf, :scheme]).each do |statement|
  top_level_concepts << {
    uri: statement.subject.to_s,
    label: graph.query([statement.subject, RDF::Vocab::SKOS.prefLabel, nil]).first&.object&.to_s,
    definition: graph.query([statement.subject, RDF::Vocab::SKOS.definition, nil]).first&.object&.to_s,
    narrower: fetch_narrower_concepts(graph, statement.subject)
  }
end
graph.query([:scheme, RDF::Vocab::SKOS.hasTopConcept, :concept]).each do |statement|
  top_level_concepts << {
    uri: statement.object.to_s,
    label: graph.query([statement.object, RDF::Vocab::SKOS.prefLabel, nil]).first&.object&.to_s,
    definition: graph.query([statement.object, RDF::Vocab::SKOS.definition, nil]).first&.object&.to_s,
    narrower: fetch_narrower_concepts(graph, statement.object)
  }
end

concept_scheme = graph.query([nil, RDF.type, RDF::Vocab::SKOS.ConceptScheme]).first&.subject
meta = {
  title:  graph.query([concept_scheme, RDF::Vocab::SKOS.prefLabel, :label]).first&.object.to_s,
  uri: concept_scheme.to_s,
  version: graph.query([concept_scheme, RDF::URI("http://www.w3.org/2002/07/owl#versionInfo"), :version]).first&.object&.to_s,
  definition: graph.query([concept_scheme, RDF::Vocab::SKOS.definition, :definition]).first&.object&.to_s
}

# Generate HTML using ERB
template = <<-HTML
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title> #{meta[:title]} </title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  <div class="container mt-5">
    <h1 class="mb-4"><%= meta[:title] %></h1>
    <p class="lead"><%= meta[:definition]%> </p>
    <span class="badge badge-dark value-type">Type: ConceptScheme</span>
    <p><strong>URI: </strong><a href="<%= meta[:uri] %>" target="_blank"><%= meta[:uri] %></a></p>
    <p><strong>Version: </strong>#{ meta[:version]}</p>
    <div class="accordion" id="conceptAccordion">
      <% top_level_concepts.each_with_index do |concept, index| %>
        <div class="card">
          <div class="card-header" id="heading<%= index %>">
            <h2 class="mb-0">
              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse<%= index %>"
                aria-expanded="true" aria-controls="collapse<%= index %>">
                <%= concept[:label] %>
              </button>
            </h2>
          </div>
          <div id="collapse<%= index %>" class="collapse" aria-labelledby="heading<%= index %>" data-parent="#conceptAccordion">
            <div class="card-body">
              <p><strong>URI:</strong> <a href="<%= concept[:uri] %>" target="_blank"><%= concept[:uri] %></a></p>
              <p><strong>Code:</strong><code> <%= concept[:uri].split("#").last %></code></p>
              <p><strong>Définition:</strong> <%= concept[:definition] %></p>
              <% if concept[:narrower].any? %>
                <h5>Concepts plus spécifiques :</h5>
                <ul>
                  <%= render_narrower(concept[:narrower]) %>
                </ul>
              <% end %>
            </div>
          </div>
        </div>
      <% end %>
    </div>

    <footer class="mt-5">
      <p class="text-muted">Généré automatiquement par <a href="http://culturecreates.com">skos-for-humans</a> le <%= Time.now.strftime('%Y-%m-%d') %>.</p>
    </footer>
  </div>

  <script src="https://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
</body>
</html>
HTML

# Helper method to render narrower concepts recursively
def render_narrower(narrower_concepts)
  narrower_concepts.map do |concept|
    <<-HTML
      <li>
        <strong><a href="#{concept[:uri]}" target="_blank">#{concept[:label]}</a></strong>
        #{render_narrower(concept[:narrower]) if concept[:narrower].any?}
      </li>
    HTML
  end.join
end

# Render the HTML
html_output = ERB.new(template).result(binding)

# Write the HTML to a file in ../docs/vocab
output_filename = File.basename(file_path, '.jsonld') + '.html'
output_path = File.expand_path("../docs/vocabulaires/#{output_filename}", File.dirname(file_path))
FileUtils.mkdir_p(File.dirname(output_path)) # Ensure the directory exists
File.write(output_path, html_output)

puts "HTML file generated at #{output_path}"