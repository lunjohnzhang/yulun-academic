#!/usr/bin/env bash

# Legacy Wowchemy updater
#
# This site now uses a vendored local theme in `themes/wowchemy` rather than
# remote Hugo Modules. Running the old module updater can reintroduce the
# broken module-loading path on older Hugo installs.
#
# If you want to modernize this site, do a full Hugo/HugoBlox migration rather
# than running this script.

# Check for prerequisites.
if [ ! -d content ]; then
  echo "ERROR: `cd` into your website folder before running this tool."
  exit 1;
fi

echo
echo "This repository is pinned to a local fallback theme at themes/wowchemy."
echo "The legacy Wowchemy module updater is intentionally disabled."
echo
echo "Why:"
echo "- Older Hugo/Wowchemy module resolution was failing to load required templates."
echo "- The site now builds from the vendored local theme instead."
echo
echo "If you want to upgrade in the future, do a full Hugo/HugoBlox migration:"
echo "https://docs.hugoblox.com/guides/upgrade/"
echo
exit 1
