# Adresse

*permet d’indiquer l’adresse d’un lieu.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"Adresse"`.
- <a id="properties/unit%C3%A9"></a>**`unité`**: Numéro d’unité, bureau ou appartement<br>  Note: cette propriété et les propriétés suivantes sont inspirées des directrices sur l'adressage de Postes Canada. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/num%C3%A9ro"></a>**`numéro`**: Numéro municipal. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/typeDeRue"></a>**`typeDeRue`**: Abréviation de type de rue recommandée par Postes Canada. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/rue"></a>**`rue`**: Nom de la rue. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/directionDeRue"></a>**`directionDeRue`**: Abréviation des points cardinaux de Postes Canada. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/ville"></a>**`ville`**: Nom de la ville. Refer to *[../datatypes/texteCourt.schema.json](#/datatypes/texteCourt.schema.json)*.
- <a id="properties/r%C3%A9gion"></a>**`région`**: Abréviation des noms de provinces recommandés par Postes Canada, ou une région dans un autre pays. Refer to *[../datatypes/région.schema.json](#/datatypes/r%C3%A9gion.schema.json)*.
- <a id="properties/pays"></a>**`pays`**: Code de pays à 3 caractères selon le standard ISO 3166-1. Refer to *[../datatypes/pays.schema.json](#/datatypes/pays.schema.json)*.
- <a id="properties/codePostal"></a>**`codePostal`**: Code postal, en majuscules. Séparer les trois premiers caractères du code postal des trois derniers. On ne doit pas utiliser le trait d’union. Refer to *[../datatypes/codePostalCanadien.schema.json](#/datatypes/codePostalCanadien.schema.json)*.
