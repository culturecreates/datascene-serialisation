# Offre

*permet de décrire les propriétés d’une offre associée à une représentation ou une série, par exemple le prix et la disponibilité.*

## Properties

- <a id="properties/type"></a>**`type`**: Must be: `"Offre"`.
- <a id="properties/lieu"></a>**`lieu`**: Lieu associé à l'offre (physique ou virtuel). Refer to *[./lieu.schema.json](#lieu.schema.json)*.
- <a id="properties/salle"></a>**`salle`**: Salle associée à l'offre. La salle fait partie du lieu indiqué à la propriété Lieu. Refer to *[./salle.schema.json](#salle.schema.json)*.
- <a id="properties/configurationSalle"></a>**`configurationSalle`**: Configuration de la salle dans le contexte de cette offre. Refer to *[./vocabulaires/configurationSalleTermes.schema.json](#vocabulaires/configurationSalleTermes.schema.json)*.
- <a id="properties/complet"></a>**`complet`** *(boolean, required)*: Permet d'indiquer si cette offre est complète (toutes les places disponibles sont comblées). Peut-être complété par la propriété Complet depuis pour préciser à quelle date l'offre est devenue complète.
- <a id="properties/completDepuis"></a>**`completDepuis`** *(string, format: date-time)*: Date depuis laquelle l'offre est complète. La propriété Complet doit avoir la valeur vrai pour que Complet depuis puisse être utilisée.
- <a id="properties/statut"></a>**`statut`**: Statut de l'offre. La valeur doit être choisie parmi les valeurs du vocabulaire contrôlé Statut de l'offre. Refer to *[./vocabulaires/statutOffreTermes.schema.json](#vocabulaires/statutOffreTermes.schema.json)*.
- <a id="properties/prix"></a>**`prix`**: Prix de départ en dollars canadiens. Refer to *[./datatypes/monétaires.schema.json](#datatypes/mon%C3%A9taires.schema.json)*.
- <a id="properties/gratuit"></a>**`gratuit`** *(boolean, required)*: Indique que la présente offre est gratuite.
- <a id="properties/accessibleViaAutreOffre"></a>**`accessibleViaAutreOffre`** *(boolean, required)*: Indique que la présente offre est accessible seulement lorsque le consommateur a souscrit à une autre offre.
- <a id="properties/d%C3%A9butPr%C3%A9vente"></a>**`débutPrévente`** *(string, format: date-time)*: Date et heure du début de la prévente. Si la propriété n'est pas documentée, la date de début de disponibilité générale doit être utilisée.
- <a id="properties/d%C3%A9butDisponibilit%C3%A9G%C3%A9n%C3%A9rale"></a>**`débutDisponibilitéGénérale`** *(string, format: date-time)*: Date et heure du début de la disponibilité générale. Si la propriété n'est pas documentée, il faut considérer que l'offre est disponible en tout temps, jusqu'à la date de début et l'heure de la représentation.
- <a id="properties/sansLienAcquisition"></a>**`sansLienAcquisition`** *(boolean, required)*: Indication à l'effet qu'il n'existe pas de lien permettant d'obtenir, par le web, un accès à la représentation.
- <a id="properties/lienAcquisition"></a>**`lienAcquisition`** *(string, format: uri)*: URL d'une page permettant de souscire à l'offre, par exemple un lien vers la page de la plateforme de billetterie.
