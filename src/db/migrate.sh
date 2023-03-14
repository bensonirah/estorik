#!/bin/bash



function handle_migration {
    local current_db=$(get_env "estorik_db")
    local migration_folder=$1
    #mysql -h 127.0.0.1 -P3307 $current_db < ~/workspace/tools/estorik/sql/rousseau/lms_lead_migration.sql
    if [ ! -d $ESTORIK_HOME/sql/$migration_folder ];then
        echo "Migration not found"
        exit 1
    fi
    for migration in $ESTORIK_HOME/sql/$migration_folder/*.sql; do
        cat $migration
    done
}


function db::migrate {
    shift 2
    if [[ $# -lt 2 ]];then
        echo "Show help"
        exit 1;
    fi
    while [[ $# -gt 1 ]];do
        case $1 in
            -m|--migration)
            migration_path="$2"
            shift 2
            ;;
            *)
            echo "Show help"
            exit 1
            ;;
        esac
    done
    handle_migration $migration_path
}