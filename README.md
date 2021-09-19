# Guide

Изначальный гайд по развертыванию окружения под Docker: 

https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-20-04-ru

## Для начала разработки:

1. git clone https://github.com/xervin/lara.git
2. docker-compose build app
3. docker-compose up -d
4. docker-compose exec app composer install
5. npm install
6. npm run watch

## Commands

npm run watch

docker-compose exec app php artisan storage:link

docker-compose exec app php artisan make:auth

docker-compose exec app php artisan ide-helper:generate

docker-compose exec app php artisan ide-helper:models


