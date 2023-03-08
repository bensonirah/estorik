#!/bin/bash

function deploy::dev-rousseau {
while getopts d: option
do
  case "${option}" in
    (d) php7.4 bin/console doctrine:schema:update --force;;
    (*) exit 1;;
  esac
done

php7.4 composer.phar dump-env dev-rousseau
php7.4 bin/console cache:clear --env=dev
chmod -R 777 var
chmod -R 777 public/uploads
}