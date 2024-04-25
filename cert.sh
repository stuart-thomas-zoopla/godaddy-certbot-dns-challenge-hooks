#!/bin/bash
source .env

echo "API Key: $API_KEY"
echo "Domain: $DOMAIN"
echo "Subdomain: $SUBDOMAIN"

certbot -d *.$SUBDOMAIN.$DOMAIN --manual --preferred-challenges dns --manual-auth-hook /usr/local/bin/auth.sh --manual-cleanup-hook /usr/local/bin/cleanup.sh certonly