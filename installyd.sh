    cd /var/www/pterodactyl 
    curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs 
    npm install -g yarn 
    yarn 
    yarn build:production
    composer require spatie/dns
    php artisan migrate 
    php artisan view:clear 
    php artisan cache:clear 
    php artisan route:clear 
    chmod -R 755 storage/* bootstrap/cache/ 
    chown -R www-data:www-data *
