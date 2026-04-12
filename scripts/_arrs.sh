#!/bin/bash

#=================================================
# *ARR APPLICATION DETECTION FUNCTIONS
#=================================================

# Direct *arr download clients (can connect to Decypharr)
# Format: app_id|domain|port|app_name|purpose
get_direct_arrs() {
    local arr_list="sonarr radarr lidarr readarr whisparr mylar3"
    local results=""

    for arr in $arr_list; do
        if yunohost app list 2>/dev/null | grep -q "\"id\": \"$arr\""; then
            local port=$(yunohost app setting "$arr" port 2>/dev/null || echo "")
            local domain=$(yunohost app setting "$arr" domain 2>/dev/null || echo "")

            # Determine display name and purpose
            local app_name=""
            local purpose=""
            case "$arr" in
                sonarr)
                    app_name="Sonarr"
                    purpose="TV Series management"
                    ;;
                radarr)
                    app_name="Radarr"
                    purpose="Movie collection management"
                    ;;
                lidarr)
                    app_name="Lidarr"
                    purpose="Music collection management"
                    ;;
                readarr)
                    app_name="Readarr"
                    purpose="Ebook collection management"
                    ;;
                whisparr)
                    app_name="Whisparr"
                    purpose="Adult content (Sonarr fork)"
                    ;;
                mylar3)
                    app_name="Mylar3"
                    purpose="Comic book collection"
                    ;;
            esac

            if [ -n "$port" ] && [ -n "$domain" ]; then
                results="${results}${arr}|${domain}|${port}|${app_name}|${purpose}"$'\n'
            fi
        fi
    done

    echo -e "$results" | grep -v "^$" | sort
}

# Related apps (useful but not directly connected to Decypharr)
# Format: app_id|domain|port|app_name|purpose
get_related_apps() {
    local app_list="prowlarr overseerr"
    local results=""

    for app in $app_list; do
        if yunohost app list 2>/dev/null | grep -q "\"id\": \"$app\""; then
            local port=$(yunohost app setting "$app" port 2>/dev/null || echo "")
            local domain=$(yunohost app setting "$app" domain 2>/dev/null || echo "")

            # Determine display name and purpose
            local app_name=""
            local purpose=""
            case "$app" in
                prowlarr)
                    app_name="Prowlarr"
                    purpose="Indexer management"
                    ;;
                overseerr)
                    app_name="Overseerr"
                    purpose="Media request management"
                    ;;
            esac

            if [ -n "$port" ] && [ -n "$domain" ]; then
                results="${results}${app}|${domain}|${port}|${app_name}|${purpose}"$'\n'
            fi
        fi
    done

    echo -e "$results" | grep -v "^$" | sort
}

# Generate markdown table for detected *arrs
# Args: $1 = "direct" or "related"
# Output: Markdown table or empty string
generate_arr_table() {
    local table_type="$1"
    local data
    local header
    local note

    if [ "$table_type" = "direct" ]; then
        data=$(get_direct_arrs)
        header="| App | Local URL | Purpose |"
        note="Add as download client in *arr settings → Download Client"
    else
        data=$(get_related_apps)
        header="| App | Local URL | Purpose |"
        note="Useful for managing indexers and requests"
    fi

    if [ -z "$data" ]; then
        echo ""
        return
    fi

    echo ""
    echo "$header"
    echo "|-----|-----------|---------|"

    while IFS='|' read -r app_id domain port app_name purpose; do
        # Extract domain path from domain (format: domain.com/path or just domain.com)
        if [[ "$domain" == *"/"* ]]; then
            local path_part="/$(echo "$domain" | cut -d'/' -f2)"
        else
            local path_part=""
        fi
        local base_domain="${domain%%/*}"
        echo "| **$app_name** | http://localhost:$port$path_part | $purpose |"
    done <<< "$data"

    echo ""
    echo "*$note*"
}
