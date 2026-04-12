# Administration de Decypharr

## Gestion du service

```bash
# Statut
yunohost service status decypharr

# Redémarrer
yunohost service restart decypharr

# Arrêter
yunohost service stop decypharr
```

## Mise à jour

```bash
yunohost app upgrade decypharr
```

## Ajouter d'autres fournisseurs Debrid

Utilisez la section **Interface Web → Paramètres → Debrids**. Vous pouvez ajouter plusieurs fournisseurs et Decypharr équilibrera la charge entre eux.

## Activer le Worker de Réparation

Dans l'interface Web → Paramètres → Réparation :
- Activer le worker
- Définir l'intervalle (par défaut `30m`)
- Choisir la stratégie : `per_file` (plus rapide) ou `per_torrent` (plus complet)

## Activer Usenet

Dans l'interface Web → Paramètres → Usenet, ajoutez vos identifiants NNTP. Decypharr expose alors une API compatible SABnzbd que vos applications *arr peuvent utiliser.

## Montage du système de fichiers

Si vous avez choisi `dfs` ou `rclone` lors de l'installation, Decypharr monte votre bibliothèque Debrid à `/mnt/decypharr`.

Pour vérifier le montage :
```bash
mountpoint /mnt/decypharr
ls /mnt/decypharr
```

Pour démonter manuellement :
```bash
fusermount -uz /mnt/decypharr
```

## Réinitialiser le mot de passe admin

Arrêtez le service, modifiez `/var/lib/decypharr/config.json`, et effacez le champ `password` (laissez-le comme `""`). Redémarrez — l'assistant de configuration Decypharr vous demandera d'en définir un nouveau.

```bash
yunohost service stop decypharr
# éditez /var/lib/decypharr/config.json  ->  "password": ""
yunohost service start decypharr
```

## Sauvegarde et restauration

La sauvegarde/restauration standard de YunoHost couvre le binaire, la configuration et toutes les données :

```bash
yunohost backup create --apps decypharr
yunohost backup restore <archive> --apps decypharr
```
