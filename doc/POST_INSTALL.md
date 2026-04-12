# After installing Decypharr

## First-run setup

Open the app from your YunoHost portal. Decypharr will guide you through a **setup wizard** to:

1. Set your admin **username and password**
2. Confirm or adjust your Debrid provider settings

## Connecting *arr apps (Sonarr / Radarr / etc.)

In each *arr app, add a **qBittorrent** download client:

| Field | Value |
|---|---|
| Host | `your-domain.tld` (or the path where Decypharr is installed) |
| Port | `443` (HTTPS via YunoHost's NGINX) |
| Use SSL | ✅ |
| Username | your Decypharr admin username |
| Password | your Decypharr admin password |
| Category | (leave blank or use `sonarr` / `radarr`) |

Alternatively use Decypharr's **web UI → Arrs** section to add them there.

## Config file location

`/var/lib/decypharr/config.json`

Do not edit while the service is running. Use the web UI instead.

## Logs

```
journalctl -u decypharr -f
# or
tail -f /var/log/decypharr/decypharr.log
```
