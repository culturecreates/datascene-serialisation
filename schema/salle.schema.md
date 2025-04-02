# Salle

*certains lieux contiennent plusieurs salles. Cette classe permet de préciser et décrire la salle utilisée dans le contexte d’une représentation donnée.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"Salle"`.
- <a id="properties/identifiant"></a>**`identifiant`**: Refer to *[./utilitaires/identifiant.schema.json](#utilitaires/identifiant.schema.json)*.
- <a id="properties/nom"></a>**`nom`**: Nom de la salle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Refer to *[./datatypes/texteLong.schema.json](#datatypes/texteLong.schema.json)*.
- <a id="properties/nomIdentiqueAuLieu"></a>**`nomIdentiqueAuLieu`** *(boolean, required)*
- <a id="properties/description"></a>**`description`** *(array)*
  - <a id="properties/description/items"></a>**Items**: Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/descriptionCourte"></a>**`descriptionCourte`** *(array)*: Description résumée de la salle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage en version courte.
  - <a id="properties/descriptionCourte/items"></a>**Items**: Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/lieuVirtuel"></a>**`lieuVirtuel`** *(boolean)*
