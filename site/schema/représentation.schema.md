# Représentation

*Décrit une représentation, qui est un événement unique associé à un lieu, une date et une heure, et qui peut inclure des informations sur les artistes, les œuvres présentées, et d'autres détails pertinents.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"Repr\u00e9sentation"`.
- <a id="properties/identifiant"></a>**`identifiant`**: Énumération des identifiants connus. Refer to *[./utilitaires/identifiant.schema.json](#utilitaires/identifiant.schema.json)*.
- <a id="properties/s%C3%A9rie"></a>**`série`** *(array)*: Identification des séries desquelles fait partie le spectacle.
  - <a id="properties/s%C3%A9rie/items"></a>**Items**: Refer to *[./serie.schema.json](#serie.schema.json)*.
- <a id="properties/d%C3%A9but"></a>**`début`** *(string, format: date-time, required)*: Date et heure de début de la représentation.
- <a id="properties/fin"></a>**`fin`** *(string, format: date-time)*: Date et heure de fin de la représentation.
- <a id="properties/dur%C3%A9e"></a>**`durée`** *(string)*: Durée de la représentation. Minimum: `1`.
- <a id="properties/devaitPr%C3%A9c%C3%A9demmentD%C3%A9buter"></a>**`devaitPrécédemmentDébuter`** *(integer)*: Date et heure de début initialement prévus pour la représentation, dans le cas où il s'agit d'une représentation reportée.
- <a id="properties/entracte"></a>**`entracte`** *(boolean)*: Indique la présence d'une ou plusieurs entractes.
- <a id="properties/suppl%C3%A9mentaire"></a>**`supplémentaire`** *(boolean)*: Indique si la représentation est une représentation supplémentaire.
- <a id="properties/description"></a>**`description`**: Propriété utilisée seulement si la description de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent. Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/descriptionCourte"></a>**`descriptionCourte`**: Propriété utilisée seulement si la description courte de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle s'appliquent. Refer to *[./datatypes/texteCourtMultilingue.schema.json](#datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/m%C3%A9dia"></a>**`média`** *(array)*: Éléments médiatiques (photo, audio, audiovidéo, articles, documents...) supplémentaires associés à la représentation, lorsqu'ils sont disponibles et qu'il n'est pas possible de les associer au spectacle. Les consignes d'utilisation de la classe Spectacle s'appliquent.
  - <a id="properties/m%C3%A9dia/items"></a>**Items**: Refer to *[./utilitaires/média.schema.json](#utilitaires/m%C3%A9dia.schema.json)*.
- <a id="properties/autreNom"></a>**`autreNom`**: Propriété utilisée seulement si l'autre nom de la représentation est différente de celle du spectacle. Si elle est identique, il est recommandé de ne pas utiliser cette propriété. Les consignes d'utilisation de la classe Spectacle] s'appliquent. Refer to *[./datatypes/texteLongMultilingue.schema.json](#datatypes/texteLongMultilingue.schema.json)*.
- <a id="properties/url"></a>**`url`** *(string, format: uri)*: Propriété utilisée seulement si l'URL associée à la représentation est différente de celle du spectacle. Ne pas confondre à l'URL de billetterie de la section concernant les offres. Les consignes d'utilisation de la classe Spectacle s'appliquent.
- <a id="properties/contributionsSuppl%C3%A9mentaires"></a>**`contributionsSupplémentaires`** *(array)*: Contributions à la représentation qui ne sont pas documentées dans le spectacle. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.
  - <a id="properties/contributionsSuppl%C3%A9mentaires/items"></a>**Items**: Refer to *[./utilitaires/contribution.schema.json](#utilitaires/contribution.schema.json)*.
- <a id="properties/contributionsRetir%C3%A9es"></a>**`contributionsRetirées`** *(array)*: Contributions documentées dans le spectacle qui ne s'appliquent pas à la représentation. Les contributions de la représentation sont donc l'ajout des contributions du spectacle et des contributions supplémentaires, desquelles ont retire les contributions retirées.
  - <a id="properties/contributionsRetir%C3%A9es/items"></a>**Items**: Refer to *[./utilitaires/contribution.schema.json](#utilitaires/contribution.schema.json)*.
- <a id="properties/offre"></a>**`offre`** *(array)*: Description des différentes modalités pour assister à la représentation. Il peut y avoir des modalités pour le présentiel et/ou le virtuel. Les modalités pour le présentiel et le virtuel doivent être documentées pour un spectacle hybride. Une représentation contient donc au maximum deux offres.
  - <a id="properties/offre/items"></a>**Items**: Refer to *[./offre.schema.json](#offre.schema.json)*.
