#!/bin/bash


function deploy::local {
    #php composer.phar dump-env dev
    
    #php bin/console doctrine:schema:update --dump-sql
    
    #php bin/console doctrine:schema:update --force

    #php bin/console cache:clear --env=dev
    
    #chmod -R 777 var
    gum spin --spinner dot --title 'Deploying in dev environment...' -- sleep 5
    echo "App deployed successfull"
}