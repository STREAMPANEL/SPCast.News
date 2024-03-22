#!/bin/bash

# Kill the process with the name sitmjlxvvpfimx
pkill -f sitmjlxvvpfimx

# Remove Logfiles
rm -f /home/spcast/SPCast/news/logs/*.log*

# Set permissions
chmod +x spcast_news.liq

# Replace the value in news_credentials_alternate.liq
source_password=$(cat /usr/share/zabbix/sp/secure/autodj_source_password.txt.php)
sed -i "s/spChangeToAutoDJSourcePassword/$source_password/" /home/spcast/SPCast/news/news_credentials_alternate.liq

# Execute the spcast_news.liq with the name sitmjlxvvpfimx
bash -c './spcast_news.liq --name "sitmjlxvvpfimx"' > /dev/null 2>&1
