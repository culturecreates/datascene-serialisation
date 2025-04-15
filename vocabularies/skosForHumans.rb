require 'linkeddata'

include RDF # include built-in vocabularies

# Get the filename from the command-line arguments
filename = ARGV[0]

# Check if a filename was provided
if filename.nil? || filename.empty?
  puts "Usage: ruby skosForHumans.rb <filename>"
  exit 1
end

# Load the RDF graph from the provided filename
graph = RDF::Graph.load(filename)

##########################################
#  Add .html file to distribution folder #
##########################################

# Load ontologies so we can dynamically dereference labels
graph << RDF::Graph.load('https://www.w3.org/2009/08/skos-reference/skos')
graph << RDF::Graph.load('http://www.w3.org/1999/02/22-rdf-syntax-ns')

skos = RDF::Vocabulary.new("http://www.w3.org/2004/02/skos/core#")
datascene = RDF::Vocabulary.new("http://datascene.ca/vocab#")

query = RDF::Query.new({
  concept: {
    RDF.type  => skos.Concept,
    skos.prefLabel => :prefLabel,
    skos.definition => :definition
  }
}, **{})

# Extract the title from the filename or use a default
title = File.basename(filename, ".skos.jsonld").capitalize
# version = graph.query(RDF::Query::Pattern.new(spt.SceneProTaxonomie, OWL.versionInfo, :o))&.first&.object

# HTML template start
html_output = <<-HTML
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Overpass:300,400,600,800">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="schema_doc.css">
    <script src="https://use.fontawesome.com/facf9fa52c.js"></script>
    <script src="schema_doc.min.js"></script>
    <meta charset="utf-8" />
    <title>#{title} </title>
  </head>
  <body>
  <div class="container">
    <h1>#{title}</h1>
    <span class="badge badge-dark value-type">https://datascene.ca/#{title}</span>
    <p class="description">Vocabulaire contrôlé pour les types de lieu.
    </p>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>code</th>
          <th>étiquette</th>
          <th>description</th>
        </tr>
      </thead>
      <tbody>
HTML

query.execute(graph) do |solution|
  table_row = <<-HTMLTABLE
      <tr>
        <td><code>#{solution.concept.to_s.split('/').last}</code></td>
        <td> #{solution.prefLabel}</td>
        <td> #{solution.definition}</td>
      </tr>
  HTMLTABLE
  html_output += table_row
end

html_output += <<-HTMLEND
  </tbody>
  </table>
    <div class="card">
      <div class="card-header" id="headingtype">
        <h2 class="mb-0">
          
          <button class="btn btn-link property-name-button" type="button" data-toggle="collapse" data-target="#type"
            aria-expanded="" aria-controls="type" onclick="setAnchor('#type')"><span class="property-name">ConceptScheme</span>
            <span class="badge badge-warning required-property">Required</span></button>
        </h2>
        <p>
        énumération proposée dans <a href="https://www.wikidata.org/wiki/Wikidata:WikiProject_Cultural_venues/Typology">Wikiprojet Cultural venues</a>.
        </p>
      </div>
    </div>
  </div>
  <footer>
    <p class="generated-by-footer">Generated using <a href="https://culturecreates.com">skos-for-humans</a> on
      #{Time.now}</p>
  </footer>
  </body>
  </html>
HTMLEND

# Save the output to an HTML file
output_filename = "../docs/vocab/#{File.basename(filename, '.skos.jsonld')}.html"
File.open(output_filename, "w") { |f| f << html_output }

puts "HTML file generated: #{output_filename}"
