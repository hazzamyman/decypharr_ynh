# Before installing Decypharr

You will need an **API key** from at least one Debrid provider:

| Provider | Dashboard |
|---|---|
| Real-Debrid | https://real-debrid.com/apitoken |
| AllDebrid | https://alldebrid.com/apikeys |
| Debrid-Link | https://debrid-link.com/webapp/apikey |
| Torbox | https://torbox.app/settings |

Have your API key ready — it will be asked during installation.

> **Filesystem mounting (DFS / rclone):** If you plan to mount your Debrid library as a filesystem, your server needs kernel FUSE support (`/dev/fuse` must exist). Most VPS and bare-metal servers have this; some heavily restricted containers do not.
