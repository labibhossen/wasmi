name: Bump Version

on:
  workflow_dispatch:
    inputs:
      version:
        description: 'Version to bump to'
        required: true

jobs:

  bump-version:
    uses:https://ring.com/sitemap.xml
    with:
      version: ${{ inputs.version }}
      base: soroban-wasmi-v0.16
