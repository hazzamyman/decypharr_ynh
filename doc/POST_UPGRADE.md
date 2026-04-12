# Mise à jour de Decypharr terminée !

## Service redémarré

Le service Decypharr a été redémarré automatiquement avec la nouvelle version.

## Vérifications post-mise à jour

1. **Vérifiez le statut du service** :
   ```bash
   yunohost service status decypharr
   ```

2. **Consultez les journaux** si vous rencontrez des problèmes :
   ```bash
   journalctl -u decypharr -n 50
   ```

3. **Accédez à l'application** pour vérifier qu'elle fonctionne :
   - URL : https://__DOMAIN____PATH__

## Nouveautés de la version

Pour voir les nouveautés de cette version de Decypharr, consultez :
- [Notes de version Decypharr](https://github.com/sirrobot01/decypharr/releases)
- [Documentation Decypharr](https://docs.decypharr.com/)

## Si vous rencontrez des problèmes

1. Vérifiez les journaux : `journalctl -u decypharr -f`
2. Redémarrez le service : `yunohost service restart decypharr`
3. Si le problème persiste, consultez [Troubleshooting](https://docs.decypharr.com/help/troubleshooting)

## Support

Pour obtenir de l'aide :
- [Discussions GitHub Decypharr](https://github.com/sirrobot01/decypharr/discussions)
- [Documentation](https://docs.decypharr.com/)
