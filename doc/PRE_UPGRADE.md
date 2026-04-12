# Avant de mettre à jour Decypharr

## Sauvegarde recommandée

Avant de procéder à la mise à jour, il est recommandé de créer une sauvegarde :

```bash
yunohost backup create --apps decypharr
```

## Ce qui sera mis à jour

- Le binaire Decypharr sera remplacé par la dernière version
- Les fichiers de configuration système (nginx, systemd, logrotate) seront mis à jour
- Votre configuration existante (`/var/lib/decypharr/config.json`) sera conservée

## Points importants

- **Ne cancelez pas** le processus de mise à jour une fois commencé
- Le service sera **redémarré automatiquement** à la fin de la mise à jour
- Vos données et paramètres **ne seront pas affectés**

## Après la mise à jour

Consultez [POST_UPGRADE.md](./POST_UPGRADE.md) pour les étapes post-mise à jour.
