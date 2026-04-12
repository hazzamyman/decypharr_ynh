# Avant d'installer Decypharr

Vous aurez besoin d'une **clé API** d'au moins un fournisseur Debrid :

| Fournisseur | Tableau de bord |
|-------------|-----------------|
| Real-Debrid | https://real-debrid.com/apitoken |
| AllDebrid | https://alldebrid.com/apikeys |
| Debrid-Link | https://debrid-link.com/webapp/apikey |
| Torbox | https://torbox.app/settings |

Ayez votre clé API prête — elle sera demandée lors de l'installation.

> **Montage du système de fichiers (DFS / rclone) :** Si vous prévoyez de monter votre bibliothèque Debrid en tant que système de fichiers, votre serveur a besoin du support FUSE du noyau (`/dev/fuse` doit exister). La plupart des VPS et serveurs bare-metal l'ont ; certains conteneurs très restreints non.
