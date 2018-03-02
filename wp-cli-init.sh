#!/bin/sh

WP_USER='wordpress',
WP_PW='wordpress',
WP_THEME_DIR='dummy-theme',
WP_THEME_NAME='dummy-theme',
WP_EMAIL='admin@wordpress.dev',
WP_DB_NAME='wordpress',
WP_DESCRIPTION='Yet another decoupled wordpress install',

# wp core download --version=4.9.2 --locale=en_US --force

# wp core config --dbname=$WP_DB_NAME --dbuser=$WP_DB_NAME --dbpass=$WP_DB_NAME --dbhost='0.0.0.0'

# wp db drop --yes
# wp db create --yes

wp core install --url=localhost:8000 --title=$WP_THEME_NAME --admin_user=$WP_USER --admin_password=$WP_PW --admin_email=$WP_EMAIL --skip-email --yes

wp theme activate $WP_THEME_DIR --yes

wp plugin activate --all --yes

# wp acf sync
