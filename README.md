# Decypharr for YunoHost

[![Integration level](https://dash.yunohost.org/integration/decypharr.svg)](https://dash.yunohost.org/appci/app/decypharr)
[![Install Decypharr with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=decypharr)

*[Read this README in English]*

> *This package lets you install Decypharr quickly and simply on a YunoHost server.*
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Decypharr is a self-hosted Debrid client that presents a qBittorrent-compatible API to your *arr stack (Sonarr, Radarr, Lidarr, etc.) while proxying torrents through Real-Debrid, AllDebrid, Debrid-Link, or Torbox.

**Shipped version:** 2.0

## Documentation and resources

- Official documentation: <https://docs.decypharr.com>
- Configuration reference: <https://docs.decypharr.com/guides/configuration>
- Upstream repository: <https://github.com/sirrobot01/decypharr>

## YunoHost specific features

- Binary install (no Docker required)
- Automatic architecture detection (amd64 / arm64)
- FUSE / mounting support with automatic capability grant
- Config is written once at install; all subsequent changes go through Decypharr's own web UI

## Developer info

Please send your pull requests to the [`testing` branch](https://github.com/YunoHost-Apps/decypharr_ynh/tree/testing).

To test the `testing` branch:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/decypharr_ynh/tree/testing --debug
# or
sudo yunohost app upgrade decypharr -u https://github.com/YunoHost-Apps/decypharr_ynh/tree/testing --debug
```
