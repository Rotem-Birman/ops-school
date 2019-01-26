!/bin/bash
sudo sed -i 's/deny\(.*from all\)/allow from all/' /etc/apache2/sites-enabled/000-default
sudo sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/sites-enabled/000-default
sudo service apache2 restart