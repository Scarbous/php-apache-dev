echo 'apt-get update'
apt-get update

echo 'Install nodejs + grunt-cli'
curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install nodejs \
    && npm install -g grunt-cli

echo 'Installinstall mysql-client'
apt-get install mysql-client

echo 'install ssmtp'
apt-get install ssmtp \
    && ln -sf /opt/docker/etc/ssmtp/ssmtp.conf /etc/ssmtp/ssmtp.conf

echo 'Add WP-CLI (https://wp-cli.org/)'
curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp

echo 'Add pestle (https://github.com/astorm/pestle)'
curl -o /usr/local/bin/pestle http://pestle.pulsestorm.net/pestle.phar \
    && chmod +x /usr/local/bin/pestle

echo 'Add magerun (https://github.com/netz98/n98-magerun)'
curl -o /usr/local/bin/magerun https://files.magerun.net/n98-magerun.phar \
    && chmod +x /usr/local/bin/magerun