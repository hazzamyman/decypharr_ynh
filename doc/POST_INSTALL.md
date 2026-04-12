# Decypharr Installation Complete!

## IMPORTANT: Paid Service Required

Decypharr requires a **paid subscription** to a debrid service (Real-Debrid, AllDebrid, Torbox, etc.) or Usenet provider to function. You will configure this during the first-run setup wizard.

## Access Decypharr

- **URL**: https://__DOMAIN____PATH__
- **First Run**: Follow the setup wizard to configure your debrid service

## Detected Direct *arr Clients

The following *arr applications were detected on your YunoHost system. You can add Decypharr as a download client in their settings.

__DIRECT_ARRS__

## Related Applications

The following related applications were detected on your YunoHost system. These are not directly connected to Decypharr but may be useful for your media workflow.

__RELATED_APPS__

## Connecting to *arr Applications

1. In your *arr app, go to **Settings → Download Client → Add Client → qBittorrent**
2. Configure the following:
   - **Host**: `localhost` (or your YunoHost domain)
   - **Port**: `__PORT__`
   - **Username/Password**: Leave blank or use Decypharr admin credentials
   - **Category**: Create a category matching your *arr (e.g., `sonarr`, `radarr`)
3. Click **Test**, then **Save**

## Usage Mode

This installation is configured for: **__USE_CASE__**

- **Streaming**: Files are cached for smooth playback (recommended for Plex/Jellyfin)
- **Downloading**: Files are saved directly to disk

Change these settings in Decypharr → Settings → Mount.

## Finding *arr API Keys

Each *arr application has its own API key. To find it:

- **Sonarr**: Settings → General → API Key
- **Radarr**: Settings → General → API Key
- **Lidarr**: Settings → General → API Key
- **Readarr**: Settings → General → API Key
- **Prowlarr**: Settings → General → API Key

## Documentation

- [Decypharr Docs](https://docs.decypharr.com/)
- [*arr Setup Guide](https://docs.decypharr.com/guides/arrs)
- [Troubleshooting](https://docs.decypharr.com/help/troubleshooting)

## Logs

```
journalctl -u decypharr -f
# or
tail -f /var/log/decypharr/decypharr.log
```
