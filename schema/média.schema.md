# Objet Média

*cette classe permet de décrire des éléments médias (images, vidéos, documents…) associés à un objet.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"ObjetM\u00e9dia"`.
- <a id="properties/num%C3%A9roDeS%C3%A9quence"></a>**`numéroDeSéquence`** *(integer)*: Priorité d'utilisation du média (les nombres plus petits représentant un niveau de priorité plus élevé).
- <a id="properties/notesUsage"></a>**`notesUsage`**: Texte libre permettant d'identifier les usages possibles du média (à l'intention des opérateurs des systèmes, pas du grand public, et donc pas pour publication). Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/url"></a>**`url`** *(string, format: uri, required)*: URL permettant d'obtenir le média. Il est suggéré de rendre disponibles les médias dans les formats standards du web, en haute résolution lorsque possible.
- <a id="properties/licence"></a>**`licence`** *(array)*: Licence d'utilisation du média. Une valeur vide ou non définie correspond à un média libre de droits. Si des conditions s'appliquent, elles doivent être définies dans cette propriété, ou sur le web à une URL intégrée dans cette propriété.
  - <a id="properties/licence/items"></a>**Items**: Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/cr%C3%A9dits"></a>**`crédits`** *(array)*: Crédits associés au média.
  - <a id="properties/cr%C3%A9dits/items"></a>**Items**: Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/description"></a>**`description`** *(array)*: Description courte (pouvant par exemple servir de «alt description» sur le web).
  - <a id="properties/description/items"></a>**Items**: Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
