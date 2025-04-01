# Contributeur

*les contributeurs correspondent à des personnes physiques ou morales (compagnies, troupes, groupes…) associées à un spectacle à travers un lien de contribution. Le contributeur doit être distingué de sa contribution à un spectacle donné (ou à une représentation, ou une série), car un même contributeur peut faire des contributions différentes d’un spectacle à l’autre (par exemple, être comédien dans un cas et metteur en scène dans l’autre).*

## Properties

- <a id="properties/type"></a>**`type`**: Indication à l'effet qu'il s'agit d'une personne physique ou d'une personne morale. Refer to *[./vocabulaires/contributeurType.schema.json](#vocabulaires/contributeurType.schema.json)*.
- <a id="properties/identifiant"></a>**`identifiant`**: Refer to *[./utilitaires/identifiant.schema.json](#utilitaires/identifiant.schema.json)*.
- <a id="properties/nom"></a>**`nom`**: Nom complet du contributeur, écrit au long, de la façon dont il doit être affiché à des utilisateurs, avec la capitalisation d'usage, les accents et les espacements usuels. Le prénom et le nom de sont pas traités dans des propriétés distinctes à cause de la diversité des appellations de contributions, qui sont parfois des personnes morales.<br>  Exemples: Michel Rivard, Les Trois Accords, Koriass, Desjardins, Spectra. Refer to *[./datatypes/texteLong.schema.json](#datatypes/texteLong.schema.json)*.
- <a id="properties/nomsAlternatif"></a>**`nomsAlternatif`** *(array)*: Autres appellations parfois utilisées pour le contributeur.<br>  Exemple: «Béatrice Martin» comme nom alternatif de «Cœur de pirate».
Exemple: «Compagnie Jean-Duceppe» comme nom alternatif de «Duceppe».
  - <a id="properties/nomsAlternatif/items"></a>**Items**: Refer to *[./datatypes/texteLong.schema.json](#datatypes/texteLong.schema.json)*.
- <a id="properties/description"></a>**`description`**: Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/descriptionCourte"></a>**`descriptionCourte`**: Description résumée du contributeur. La fourchette de 200 à 400 caractères est suggérée pour les différents besoins d'affichage. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/m%C3%A9dias"></a>**`médias`**: Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) associé au contributeur. Refer to *[./utilitaires/média.schema.json](#utilitaires/m%C3%A9dia.schema.json)*.
- <a id="properties/contributionTypeHabituelle"></a>**`contributionTypeHabituelle`** *(array)*: Énumération des types de contributions habituellement faites par le contributeur.
  - <a id="properties/contributionTypeHabituelle/items"></a>**Items**: Refer to *[./vocabulaires/contributionType.schema.json](#vocabulaires/contributionType.schema.json)*.
- <a id="properties/associationG%C3%A9ographique"></a>**`associationGéographique`** *(array)*: Permet d'associer des lieux au contributeur, par exemple pour indiquer le lieu de naissance, de décès, le lieu du siège social, etc.
  - <a id="properties/associationG%C3%A9ographique/items"></a>**Items**: Refer to *[./utilitaires/associationGéographique.schema.json](#utilitaires/associationG%C3%A9ographique.schema.json)*.
- <a id="properties/compos%C3%A9De"></a>**`composéDe`**: Énumération des membres des groupes, troupes et collectifs, etc. Refer to *[./contributeur.schema.json](#contributeur.schema.json)*.
