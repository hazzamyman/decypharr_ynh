# Installation de Decypharr terminée !

## IMPORTANT : Service payant requis

Decypharr nécessite un **abonnement payant** à un service de débridage (Real-Debrid, AllDebrid, Torbox, etc.) ou à un fournisseur Usenet pour fonctionner. Vous le configurerez lors de l'assistant de première configuration.

## Accéder à Decypharr

- **URL** : https://__DOMAIN____PATH__
- **Première utilisation** : Suivez l'assistant de configuration pour configurer votre service de débridage

## Clients *arr directs détectés

Les applications *arr suivantes ont été détectées sur votre système YunoHost. Vous pouvez ajouter Decypharr comme client de téléchargement dans leurs paramètres.

__DIRECT_ARRS__

## Applications connexes

Les applications connexes suivantes ont été détectées sur votre système YunoHost. Elles ne sont pas directement connectées à Decypharr mais peuvent être utiles pour votre flux de travail média.

__RELATED_APPS__

## Connexion aux applications *arr

1. Dans votre application *arr, allez dans **Paramètres → Client de téléchargement → Ajouter un client → qBittorrent**
2. Configurez ce qui suit :
   - **Hôte** : `localhost` (ou votre domaine YunoHost)
   - **Port** : `__PORT__`
   - **Nom d'utilisateur/Mot de passe** : Laissez vide ou utilisez les identifiants admin Decypharr
   - **Catégorie** : Créez une catégorie correspondant à votre *arr (par ex. `sonarr`, `radarr`)
3. Cliquez sur **Tester**, puis **Enregistrer**

## Mode d'utilisation

Cette installation est configurée pour : **__USE_CASE__**

- **Streaming** : Les fichiers sont mis en cache pour une lecture fluide (recommandé pour Plex/Jellyfin)
- **Téléchargement** : Les fichiers sont enregistrés directement sur le disque

Modifiez ces paramètres dans Decypharr → Paramètres → Montage.

## Trouver les clés API *arr

Chaque application *arr a sa propre clé API. Pour la trouver :

- **Sonarr** : Paramètres → Général → Clé API
- **Radarr** : Paramètres → Général → Clé API
- **Lidarr** : Paramètres → Général → Clé API
- **Readarr** : Paramètres → Général → Clé API
- **Prowlarr** : Paramètres → Général → Clé API

## Documentation

- [Docs Decypharr](https://docs.decypharr.com/)
- [Guide de configuration *arr](https://docs.decypharr.com/guides/arrs)
- [Dépannage](https://docs.decypharr.com/help/troubleshooting)

## Journaux

```
journalctl -u decypharr -f
# ou
tail -f /var/log/decypharr/decypharr.log
```
