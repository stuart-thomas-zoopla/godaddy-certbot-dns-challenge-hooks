# godaddy-certbot-dns-challenge-hooks
Certbot manual-auth-hook and manual-cleanup-hook scripts to support DNS challenge on godaddy API. 
Created to support Wildcards on sub-sub domains, eg. *.test.example.com.

To use:

```
git clone https://github.com/stuart-thomas-zoopla/godaddy-certbot-dns-challenge-hooks /usr/bin/local
cd /usr/bin/local
cp example.env .env
nano .env
```
Update the values in the .env file with yours eg:
```
API_KEY=1a2b2f44d523sd4sd
DOMAIN=example.com
SUBDOMAIN=test
```
Then execute cert.sh
```
bash cert.sh
```

Certbot should now create your new certificate and renew automatically.