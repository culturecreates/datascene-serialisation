# Spectacle

*la classe centrale du référentiel. Elle permet de documenter ce qui relève du spectacle au sens d'œuvre mise en scène. Par contraste, cela exclut donc les éléments descriptifs des représentations.*

## Properties

- <a id="properties/%40context"></a>**`@context`** *(string, required)*: Must be: `"https://datascence.ca/context.jsonld"`.
- <a id="properties/type"></a>**`type`**: Must be: `"Spectacle"`.
- <a id="properties/identifiant"></a>**`identifiant`**: Refer to *[./utilitaires/identifiant.schema.json](#utilitaires/identifiant.schema.json)*.
- <a id="properties/nom"></a>**`nom`**: Nom du spectacle, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/autreNom"></a>**`autreNom`**: Élément qui ne fait pas partie du nom, mais qui le complète, sans toutefois relever de la description elle-même. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/description"></a>**`description`**: Description du spectacle. Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/descriptionCourte"></a>**`descriptionCourte`**: Description résumée du spectacle. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/m%C3%A9dia"></a>**`média`** *(array)*: Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au spectacle.
  - <a id="properties/m%C3%A9dia/items"></a>**Items**: Refer to *[./utilitaires/média.schema.json](#utilitaires/m%C3%A9dia.schema.json)*.
- <a id="properties/contribution"></a>**`contribution`** *(array)*: Énumération des contributions. Il peut s'agir de contribution à la création (ex: auteur.trice, metteur.se en scène), de contributions à l'exécution (ex: comédien.en, musicien.ne).<br>  Le contributeur peut être une personne ou une organisation.<br>  Il s'agit de contributeurs qui sont associés à toutes les représentations du spectacle. Pour les contributions spécifiques à une représentation, utiliser le champ correspondant dans la classe Représentation.<br>  Si un même contributeur a plusieurs contributions pour un même spectacle, il est suggéré de répéter plusieurs objets de la classe Contribution.
  - <a id="properties/contribution/items"></a>**Items**: Refer to *[./utilitaires/contribution.schema.json](#utilitaires/contribution.schema.json)*.
- <a id="properties/url"></a>**`url`** *(array)*: URL vers des pages web donnant plus d'information sur le spectacle.<br>  Pour des besoins plus précis, par exemple des URL de critiques du spectacle, la propriété Médias, qui permet d'inclure des notes d'usage, peut être utilisée.
  - <a id="properties/url/items"></a>**Items** *(string, format: uri)*
- <a id="properties/oeuvreAssoci%C3%A9e"></a>**`oeuvreAssociée`** *(array)*: Énumérations d'oeuvres, de la même discipline ou pas, qui sont associées au spectacle. Il peut s'agir du texte d'une pièce de théâtre, d'un album musical associé à un spectacle, etc. Il doit s'agir d'associations avec des oeuvres qui ne peuvent pas être identifiées aisément à travers d'autres propriétés.<br>  Exemple 1: les données d'une pièce de théâtre peuvent pointer vers le texte de la pièce, disponible en librairie.<br>  Exemple 2: les données d'un spectacle musical peuvent énumérer des enregistrements des pièces jouées lors du spectacle.<br>  Contre exemple: il n'est pas utile que les données d'un spectacle d'humour énumère les autres spectacles du même humoriste, car il est possible d'obtenir cette information à travers les contributeurs.
  - <a id="properties/oeuvreAssoci%C3%A9e/items"></a>**Items**: Refer to *[#/definitions/OeuvreAssociée](#definitions/OeuvreAssoci%C3%A9e)*.
- <a id="properties/discipline"></a>**`discipline`** *(array, required)*: Identification des disciplines artistiques du spectacle.
  - <a id="properties/discipline/items"></a>**Items**: Refer to *[./vocabulaires/disciplinesArtistique.schema.json](#vocabulaires/disciplinesArtistique.schema.json)*.
- <a id="properties/publicCible"></a>**`publicCible`** *(array, required)*: Identification des publics cibles du spectacle.<br>  Lorsque le vocabulaire utilisé contient un terme équivalent à « tout public », il est préférable de l'utiliser, que d'énumérer tous les types de publics.
  - <a id="properties/publicCible/items"></a>**Items**: Refer to *[./vocabulaires/publicCible.schema.json](#vocabulaires/publicCible.schema.json)*.
- <a id="properties/langues"></a>**`langues`** *(array)*: Langues utilisées dans le spectacle, en ordre décroissant d'importance. La langue principale doit donc être mentionnée en premier.
  - <a id="properties/langues/items"></a>**Items**: Refer to *[./datatypes/partielles/langue.schema.json](#datatypes/partielles/langue.schema.json)*.
- <a id="properties/languesDAppui"></a>**`languesDAppui`** *(array)*: Langues pour lesquelles des artéfacts d'aide à la compréhension du spectacle sont disponibles (surtitrage, programmes, traduction simultannée...).
  - <a id="properties/languesDAppui/items"></a>**Items**: Refer to *[./datatypes/partielles/langue.schema.json](#datatypes/partielles/langue.schema.json)*.
- <a id="properties/spectacleSansParole"></a>**`spectacleSansParole`** *(boolean, required)*: Indication à l'effet que le spectacle ne contient pas de paroles.
- <a id="properties/contenus"></a>**`contenus`** *(array)*: Permet d'identifier certains type de contenus qui sont présents dans le spectacle.
  - <a id="properties/contenus/items"></a>**Items**: Refer to *[./vocabulaires/contenusType.schema.json](#vocabulaires/contenusType.schema.json)*.
- <a id="properties/avertissement"></a>**`avertissement`** *(array)*: Permet d'identifier des avertissements associés au spectacle.
  - <a id="properties/avertissement/items"></a>**Items**: Refer to *[./vocabulaires/avertissement.schema.json](#vocabulaires/avertissement.schema.json)*.
- <a id="properties/repr%C3%A9sentation"></a>**`représentation`** *(array)*: Énumération des représentations du spectacle, qu'elles soient passées ou futures.
  - <a id="properties/repr%C3%A9sentation/items"></a>**Items**: Refer to *[./représentation.schema.json](#repr%C3%A9sentation.schema.json)*.
- <a id="properties/tra%C3%A7abilit%C3%A9"></a>**`traçabilité`** *(array)*: Énumération des spectacles dont est issu le présent spectacle. Utilisé lorsqu'un spectacle est issu de la fusion d'autres spectacles.
  - <a id="properties/tra%C3%A7abilit%C3%A9/items"></a>**Items**: Refer to *[./spectacle.schema.json](#spectacle.schema.json)*.
## Definitions

- <a id="definitions/OeuvreAssoci%C3%A9e"></a>**`OeuvreAssociée`** *(object)*: Objets d'association à une oeuvre.
  - <a id="definitions/OeuvreAssoci%C3%A9e/properties/type"></a>**`type`**: Must be: `"OeuvreAssoci\u00e9e"`.
  - <a id="definitions/OeuvreAssoci%C3%A9e/properties/ouevre"></a>**`ouevre`**: Identification de l'oeuvre. Refer to *[./oeuvre.schema.json](#oeuvre.schema.json)*.
  - <a id="definitions/OeuvreAssoci%C3%A9e/properties/explications"></a>**`explications`**: Notes sur le lien entre l'oeuvre et le spectacle. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
