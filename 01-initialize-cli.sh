#!/bin/bash
# Add the key to the CLI tool
civo apikey add civo-key ${CIVO_API_KEY}
civo apikey current civo-key
