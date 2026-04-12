# Decypharr

Decypharr is a self-hosted Debrid client that acts as a blackhole downloader compatible with the qBittorrent API. It bridges your *arr stack (Sonarr, Radarr, Lidarr, etc.) with Real-Debrid, AllDebrid, Debrid-Link, and Torbox.

## Key features

- **qBittorrent-compatible API** — drop-in replacement for qBittorrent in any *arr setup
- **Multiple Debrid providers** — Real-Debrid, AllDebrid, Debrid-Link, Torbox
- **Filesystem mounting** — expose your Debrid library as a local filesystem via a built-in VFS (DFS) or embedded rclone
- **WebDAV server** — stream or browse your Debrid files over WebDAV
- **Usenet support** — acts as a SABnzbd-compatible endpoint with NNTP provider support
- **Repair worker** — automatically detects and re-adds broken/expired torrents
- **Web UI** — full configuration and management through a browser

## YunoHost-specific notes

- The app is installed as a **binary** (no Docker required).
- The install wizard only asks for the essentials. **All advanced settings** (additional debrid providers, *arr connections, mounting options, Usenet, repair worker) are configured through Decypharr's own **web UI** after installation.
- Decypharr has its **own username/password** authentication system. The first-run setup wizard lets you set these. YunoHost's permission system controls which YunoHost users can reach the app at all.
- If you chose a **mount type** (dfs or rclone) during install, the app will need `CAP_SYS_ADMIN` and FUSE access. This is handled automatically.
- The config file lives at `/var/lib/decypharr/config.json`. **Do not edit it manually** unless the app is stopped — Decypharr rewrites it on changes.
