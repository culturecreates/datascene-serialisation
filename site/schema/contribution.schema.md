# Contribution

*cette classe permet de décrire le lien entre un contributeur et un spectacle, une représentation ou une série. Elle indique le rôle du contributeur dans un contexte donné.*

## Properties

- <a id="properties/type"></a>**`type`** *(array, required)*: Identification des types de contribution.
  - <a id="properties/type/items"></a>**Items**: Refer to *[../vocabulaires/contributionType.schema.json](#/vocabulaires/contributionType.schema.json)*.
- <a id="properties/contributeur"></a>**`contributeur`**: Identification du contributeur. Refer to *[../contributeur.schema.json](#/contributeur.schema.json)*.
- <a id="properties/num%C3%A9roDeS%C3%A9quence"></a>**`numéroDeSéquence`** *(integer)*: Précision sur l'ordre de présentation des contributions (les nombres plus petits correspondent à des contributions qui doivent être présentées en premier).
- <a id="properties/note"></a>**`note`**: Note concernant la contribution, à l'intention des exploitants des systèmes d'information (et donc pas du grand public). Il peut s'agir d'une précision sur le type de contribution, qui ne pourrait pas être exprimée à travers la propriété Types. Les informations compilées dans les notes pourraient être utilisées pour améliorer les vocabulaires contrôllés. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
