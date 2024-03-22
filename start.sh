#!/bin/bash

# Kill the process with the name sitmjlxvvpfimx
pkill -f sitmjlxvvpfimx

# Remove Logfiles
rm -f /home/spcast/SPCast/news/logs/*.log*

# Set permissions
chmod +x spcast_news.liq

# Execute the spcast_news.liq with the name sitmjlxvvpfimx
bash -c './spcast_news.liq --name "sitmjlxvvpfimx"' > /dev/null 2>&1
