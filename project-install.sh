#!/bin/bash

rm -rf vendor
rm -rf public/bundles
rm -rf var/cache var/log
composer install -o

HTTPDUSER=$(ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1)
setfacl -dR -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX var/cache var/log
setfacl  -R -m u:"$HTTPDUSER":rwX -m u:$(whoami):rwX var/cache var/log
