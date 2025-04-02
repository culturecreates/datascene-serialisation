# Lieu

*sert à décrire un lieu, typiquement associé à une représentation. La classe est générique et les lieux peuvent correspondre à des édifices ou à des lieux extérieurs. Il s’agit du lieu associé à une adresse, ou à des indications géographiques précises, qui serait présenté à un consommateur comme l’endroit où se présenter pour assister à une représentation.*

## Properties

- <a id="properties/type"></a>**`type`**: Refer to *[./vocabulaires/lieuType.schema.json](#vocabulaires/lieuType.schema.json)*.
- <a id="properties/identifiant"></a>**`identifiant`**: Refer to *[./utilitaires/identifiant.schema.json](#utilitaires/identifiant.schema.json)*.
- <a id="properties/nom"></a>**`nom`**: Refer to *[./datatypes/texteLong.schema.json](#datatypes/texteLong.schema.json)*.
- <a id="properties/description"></a>**`description`** *(array)*: Length must be at least 1.
  - <a id="properties/description/items"></a>**Items**: Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/lieuVirtuel"></a>**`lieuVirtuel`** *(boolean, required)*
- <a id="properties/salle"></a>**`salle`** *(array)*: Énumération des salles présentes dans le lieu. Recommandé pour les lieux contenant plusieurs salles, ou pour documenter des informations associés à la classe Salle (par exemple, les configurations possibles) dans un lieu avec une seule salle.
  - <a id="properties/salle/items"></a>**Items**: Refer to *[./salle.schema.json](#salle.schema.json)*.
- <a id="properties/adresse"></a>**`adresse`**: Adresse du lieu, qui peut être une adresse postale ou une adresse géographique. La propriété est un tableau de chaînes de caractères, car il peut y avoir plusieurs adresses associées à un même lieu. Refer to *[./utilitaires/adresse.schema.json](#utilitaires/adresse.schema.json)*.
- <a id="properties/url"></a>**`url`** *(array)*: URL vers des pages web donnant plus d'information sur le lieu. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible.
  - <a id="properties/url/items"></a>**Items** *(string, format: uri)*
- <a id="properties/accessibilit%C3%A9Universelle"></a>**`accessibilitéUniverselle`** *(array)*: Caractéristiques d'accessibilité universelle pour le lieu. Des caractéristiques supplémentaires pourraient être documentées pour la ou les salles.
  - <a id="properties/accessibilit%C3%A9Universelle/items"></a>**Items**: Refer to *[./vocabulaires/accessibilitéUniverselleTermes.schema.json](#vocabulaires/accessibilit%C3%A9UniverselleTermes.schema.json)*.
- <a id="properties/coordG%C3%A9o"></a>**`coordGéo`**: Refer to *[./datatypes/coordGéo.schema.json](#datatypes/coordG%C3%A9o.schema.json)*.
