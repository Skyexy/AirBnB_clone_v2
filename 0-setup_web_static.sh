#!/usr/bin/env bash
# Write a Bash script that sets up your web servers for the deployment of web_static
sudo apt-get update
sudo apt-get install nginx
ufw allow 'Nginx HTTP'
mkdir –p data/web_static/releases/test/
mkdir –p data/web_static/shared/
echo "Holberton School" > data/web_static/releases/test/index.html
ln -sfn /data/web_static/releases/test/ /data/web_static/current
sudo chown -R $ubuntu:$ubuntu /data/
sed -i '/listen 80 default_server;/a location /hbnb_static/ { alias /data/web_static/current/; }' /etc/nginx/sites-available/default
service nginx restart
