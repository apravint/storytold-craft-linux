#!/usr/bin/env bash
# ==============================================================================
# Storytold Craft Suite - Universal Linux Desktop Installer
# ==============================================================================
set -euo pipefail

GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DEST="${HOME}/.local/bin"
APP_DEST="${HOME}/.local/share/applications"
ICON_DEST="${HOME}/.local/share/icons/hicolor/128x128/apps"

echo -e "${BOLD}${CYAN}=== Installing Storytold Craft Suite for Linux ===${NC}"

mkdir -p "$BIN_DEST" "$APP_DEST" "$ICON_DEST" "$HOME/.local/share/craft-suite"

echo -e "${BLUE}Installing runners and CLI wrappers to $BIN_DEST...${NC}"
cp -a "$SCRIPT_DIR/bin/"* "$BIN_DEST/"
chmod +x "$BIN_DEST/craft-"* "$BIN_DEST/artcraft-launcher" 2>/dev/null || true

echo -e "${BLUE}Installing XDG desktop entries to $APP_DEST...${NC}"
cp "$SCRIPT_DIR/applications/"*.desktop "$APP_DEST/"

echo -e "${BLUE}Installing high-resolution brand icons to $ICON_DEST...${NC}"
cp "$SCRIPT_DIR/icons/"*.png "$ICON_DEST/"

# Also copy standard lowercase icon aliases
for icon in "$SCRIPT_DIR/icons/"*.png; do
    base=$(basename "$icon" | sed 's/^ai.storyteller.//')
    cp "$icon" "$ICON_DEST/$base" 2>/dev/null || true
done

echo -e "${BLUE}Updating desktop database and icon caches...${NC}"
gtk-update-icon-cache -f -t "${HOME}/.local/share/icons/hicolor" 2>/dev/null || true
update-desktop-database "$APP_DEST" 2>/dev/null || true

echo -e "${GREEN}${BOLD}✓ Storytold Craft Suite installed successfully!${NC}"
echo -e "You can now launch any Craft app from your application launcher or terminal:"
echo -e "  ${BOLD}artcraft-launcher${NC}   # Open the complete Craft Suite Hub"
echo -e "  ${BOLD}photocraft${NC}          # Launch PhotoCraft (Photoshop alternative)"
echo -e "  ${BOLD}vectorcraft${NC}         # Launch VectorCraft (Illustrator alternative)"
echo -e "  ${BOLD}filmcraft${NC}           # Launch FilmCraft (Premiere Pro alternative)"
echo -e "  ${BOLD}soundcraft${NC}          # Launch SoundCraft (Pro Tools alternative)"
echo -e "  ${BOLD}cadcraft${NC}            # Launch CADCraft (AutoCAD alternative)"
