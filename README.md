## Mandat de sérialisation

- Voir `/pdf` pour l'historique des présentations
- Voir `/schema` pour tous les JSON Schema
- Voir `/data` pour des exemples JSON
- Voir `/vocabulaires` pour les SKOS
- Voir https://culturecreates.github.io/datascene-serialisation/ pour la documentation générée


# Attention
Ceci est un travail en progrès et non officiel.

Voir https://datascene.ca pour le projet final.


# How to generate docs
1. install json-schema-for-humans
2. run ./generate.sh 
3. cd vocabularies
4. gem install linkeddata (ruby 3.1.2 or higher)
5. run ./generate-skos.sh
6. git push