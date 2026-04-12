# Administrating Decypharr

## Service management

```bash
# Status
yunohost service status decypharr

# Restart
yunohost service restart decypharr

# Stop
yunohost service stop decypharr
```

## Updating

```bash
yunohost app upgrade decypharr
```

## Adding more Debrid providers

Use the **web UI → Settings → Debrids** section. You can add multiple providers and Decypharr will load-balance between them.

## Enabling the Repair Worker

In the web UI → Settings → Repair:
- Enable the worker
- Set the interval (default `30m`)
- Choose strategy: `per_file` (faster) or `per_torrent` (thorough)

## Enabling Usenet

In the web UI → Settings → Usenet, add your NNTP provider credentials. Decypharr then exposes a SABnzbd-compatible API that your *arr apps can use.

## Filesystem mounting

If you chose `dfs` or `rclone` at install time, Decypharr mounts your Debrid library at `/mnt/decypharr`.

To check the mount:
```bash
mountpoint /mnt/decypharr
ls /mnt/decypharr
```

To manually unmount:
```bash
fusermount -uz /mnt/decypharr
```

## Resetting the admin password

Stop the service, edit `/var/lib/decypharr/config.json`, and clear the `password` field (leave it as `""`). Restart — Decypharr's setup wizard will prompt you to set a new one.

```bash
yunohost service stop decypharr
# edit /var/lib/decypharr/config.json  ->  "password": ""
yunohost service start decypharr
```

## Backup and restore

YunoHost's standard backup/restore covers the binary, config, and all data:

```bash
yunohost backup create --apps decypharr
yunohost backup restore <archive> --apps decypharr
```
