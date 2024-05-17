#!/bin/bash
# from https://gist.github.com/mrmanc/72eb1712472242e8962661f59ea60ca8
#
# Settings are stored in the pbs domain. Other settings in this domain will not be overwritten.
# I’ve included the settings to change in JSON for brevity.
# They are converted to XML (which `defaults import` expects) before being imported.
#
TEMP_SETTINGS_FILE=$(mktemp -t 'man-shortcuts-off.json')
cat > $TEMP_SETTINGS_FILE <<EOF
{
  "NSServicesStatus": {
    "com.apple.Terminal - Open man Page in Terminal - openManPage": {
      "presentation_modes": {
        "ContextMenu": false,
        "ServicesMenu": false
      },
      "enabled_context_menu": false,
      "enabled_services_menu": false
    },
    "com.apple.Terminal - Search man Page Index in Terminal - searchManPages": {
      "presentation_modes": {
        "ContextMenu": false,
        "ServicesMenu": false
      },
      "enabled_context_menu": false,
      "enabled_services_menu": false
    }
  }
}
EOF

plutil -convert xml1 -o - ${TEMP_SETTINGS_FILE} | defaults import pbs -
rm ${TEMP_SETTINGS_FILE}
