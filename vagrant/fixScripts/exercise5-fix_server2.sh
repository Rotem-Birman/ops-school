!/bin/bash
cp /vagrant/.vagrant/machines/server1/virtualbox/private_key ~vagrant/.ssh/id_rsa
chmod 600 ~vagrant/.ssh/id_rsa
chown vagrant:vagrant ~vagrant/.ssh/id_rsa
echo "Host server1" >> ~vagrant/.ssh/config
   echo -e '\tStrictHostKeyChecking no' >> ~vagrant/.ssh/config
   chown vagrant:vagrant ~vagrant/.ssh/config
   cat /home/vagrant/.ssh/id_rsa >> /home/vagrant/.ssh/authorized_keys