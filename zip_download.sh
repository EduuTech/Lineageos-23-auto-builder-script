
#!/usr/bin/env bash
set -euo pipefail

CODENAME="${1:?Codename não informado}"
ERROR_DOWN="${2:-Falha no download}"

API="https://download.lineageos.org/api/v2/devices/$CODENAME/builds"

for cmd in curl jq sha256sum; do
    command -v "$cmd" >/dev/null 2>&1 || {
        echo ""
        exit 1
    }
done

ZIP_INFO=$(curl -fsSL "$API" |
    jq -cer '
        [.[0].files[]
        | select(.filename | endswith(".zip"))][0]
    ') || {
        echo "$ERROR_DOWN" >&2
        exit 1
    }

ZIP_NAME=$(jq -er '.filename' <<< "$ZIP_INFO")
ZIP_SHA256=$(jq -er '.sha256' <<< "$ZIP_INFO")
ZIP_URL=$(jq -er '.url' <<< "$ZIP_INFO")

curl -fL --progress-bar --retry 3 \
    -o "$ZIP_NAME" "$ZIP_URL" || {
        echo "$ERROR_DOWN" >&2
        exit 1
    }

if ! printf '%s  %s\n' "$ZIP_SHA256" "$ZIP_NAME" |
    sha256sum -c -; then
    echo "SHA-256 inválido!" >&2
    rm -f "$ZIP_NAME"
    exit 1
fi

export ZIP_NAME