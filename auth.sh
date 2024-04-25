#!/bin/bash
source .env

echo "API Key: $API_KEY"
echo "Domain: $DOMAIN"
echo "Subdomain: $SUBDOMAIN"

CHALLENGE_KEY="_acme_challenge.${SUBDOMAIN}"

curl -s -X PUT  "https://api.godaddy.com/v1/domains/${DOMAIN}/records/txt/${CHALLENGE_KEY}" -H "Authorization: sso-key ${API_KEY}" -H "Content-Type: application/json" -d "[{\"data\": \"${CERTBOT_VALIDATION}\"}]"

sleep 25