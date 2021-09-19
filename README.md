# Guide

Изначальный гайд по развертыванию окружения под Docker: 

https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-20-04-ru

## Run

docker-compose build app

docker-compose up -d

# Command

npm run watch

docker-compose exec app php artisan storage:link

docker-compose exec app php artisan make:auth

docker-compose exec app php artisan ide-helper:generate

docker-compose exec app php artisan ide-helper:models


