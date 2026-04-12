# Decypharr

Decypharr est un client Debrid auto-hébergé qui agit comme un téléchargeur blackhole compatible avec l'API qBittorrent. Il fait le pont entre votre pile *arr (Sonarr, Radarr, Lidarr, etc.) et Real-Debrid, AllDebrid, Debrid-Link et Torbox.

## Fonctionnalités principales

- **API compatible qBittorrent** — remplacement direct de qBittorrent dans n'importe quelle configuration *arr
- **Plusieurs fournisseurs Debrid** — Real-Debrid, AllDebrid, Debrid-Link, Torbox
- **Montage du système de fichiers** — exposez votre bibliothèque Debrid comme un système de fichiers local via un VFS intégré (DFS) ou rclone embarqué
- **Serveur WebDAV** — streamez ou parcourez vos fichiers Debrid via WebDAV
- **Support Usenet** — agit comme un point de terminaison compatible SABnzbd avec support du fournisseur NNTP
- **Worker de réparation** — détecte et ré-ajoute automatiquement les torrents cassés/expirés
- **Interface Web** — configuration et gestion complètes via un navigateur

## Notes spécifiques à YunoHost

- L'application est installée en tant que **binaire** (pas de Docker requis).
- L'assistant d'installation ne demande que l'essentiel. **Tous les paramètres avancés** (fournisseurs Debrid supplémentaires, connexions *arr, options de montage, Usenet, worker de réparation) sont configurés via l'**interface Web** de Decypharr après l'installation.
- Decypharr possède son **propre système d'authentification nom d'utilisateur/mot de passe**. L'assistant de première configuration vous permet de les définir. Le système de permissions de YunoHost contrôle quels utilisateurs YunoHost peuvent accéder à l'application.
- Si vous avez choisi un **type de montage** (dfs ou rclone) lors de l'installation, l'application aura besoin de `CAP_SYS_ADMIN` et de l'accès FUSE. Ceci est géré automatiquement.
- Le fichier de configuration se trouve dans `/var/lib/decypharr/config.json`. **Ne l'éditez pas manuellement** sauf si l'application est arrêtée — Decypharr le réécrit lors des modifications.
