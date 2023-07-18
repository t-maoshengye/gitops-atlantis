#!/bin/sh
set -e

# cat ./atlantis.var
# SECRET=Github_Webhook_Secret
# TOKEN=Github_Token
# URL=Ngrok_Forwarding_URL
# USERNAME=Github-Username
# REPO_ALLOWLIST="github.com/Github_Username/*"
# REPO_CONFIG="./repos.yaml"
. ./atlantis.var

./atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST" \
--repo-config="$REPO_CONFIG"
