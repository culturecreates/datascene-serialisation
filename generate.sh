#!/bin/bash

# Function to generate documentation for all schemas
generate_all() {
  echo "No parameter provided. Generating documentation for all schemas..."
  generate-schema-doc ./schema/show.schema.json ./docs/spectacle.html
  generate-schema-doc ./schema/performance.schema.json ./docs/représentation.html
  generate-schema-doc ./schema/offer.schema.json ./docs/offre.html
  generate-schema-doc ./schema/contributor.schema.json ./docs/contributeur.html
  generate-schema-doc ./schema/place.schema.json ./docs/lieu.html
  generate-schema-doc ./schema/work.schema.json ./docs/oeuvre.html
  generate-schema-doc ./schema/room.schema.json ./docs/salle.html
  generate-schema-doc ./schema/series.schema.json ./docs/série.html

  # Generate documentation for all schemas in the utilitaires directory
  for schema in ./schema/utilities/*.schema.json; do
    schema_name=$(basename "$schema" .schema.json)
    generate-schema-doc "$schema" "./docs/utilities/${schema_name}.html"
  done
}

# Check if a parameter is passed
if [ -z "$1" ]; then
  # No parameter provided, generate all schemas
  generate_all
else
  # Run the command based on the parameter
  case "$1" in
    spectacle)
      generate-schema-doc ./schema/show.schema.json ./docs/show.html
      ;;
    rep)
      generate-schema-doc ./schema/performance.schema.json ./docs/performance.html
      ;;
    offre)
      generate-schema-doc ./schema/offer.schema.json ./docs/offer.html
      ;;
    contributeur)
      generate-schema-doc ./schema/contributor.schema.json ./docs/contributor.html
      ;;
    lieu)
      generate-schema-doc ./schema/place.schema.json ./docs/lieu.html
      ;;
    oeuvre)
      generate-schema-doc ./schema/work.schema.json ./docs/oeuvre.html
      ;;
    salle)
      generate-schema-doc ./schema/room.schema.json ./docs/salle.html
      ;;
    serie)
      generate-schema-doc ./schema/series.schema.json ./docs/série.html
      ;;
    utilitaires/*)
      schema_name=$(basename "$1" .schema.json)
      generate-schema-doc "./schema/utilities/${schema_name}.schema.json" "./docs/utilities/${schema_name}.html"
      ;;
    *)
      echo "Invalid option: $1"
      echo "Available options: spectacle, rep, offre, contributeur, lieu, oeuvre, salle, serie, or utilitaires/<schema-name>"
      exit 1
      ;;
  esac
fi
