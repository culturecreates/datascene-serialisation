# Terme

*permet d’identifier un terme précis, dans une version donnée d’un vocabulaire contrôlé.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"Terme"`.
- <a id="properties/vocabulaire"></a>**`vocabulaire`**: Identification du vocabulaire duquel est tiré le terme.<br>  Typiquement, cette identification correspond à l'appellation du vocabulaire dont l'usage est le plus fréquent, tout en minuscules, sans accents, et avec les espaces remplacés par des barres de soulignement. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/version"></a>**`version`**: Version du vocabulaire utilisé, lorsque c'est applicable. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/code"></a>**`code`**: Identification du terme selon le vocabulaire identifié. En cas d'incohérence entre l'étiquette et le code transmis, c'est ce dernier qui doit être priorisé. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/%C3%A9tiquette"></a>**`étiquette`**: Version textuelle du terme tiré du vocabulaire choisi. Refer to *[../datatypes/texteCourtMultilingue.schema.json](#/datatypes/texteCourtMultilingue.schema.json)*.
- <a id="properties/num%C3%A9roDeS%C3%A9quence"></a>**`numéroDeSéquence`** *(integer, required)*: Priorité d'utilisation du terme (les nombres plus petits représentant un niveau de priorité plus élevé).
