#!/bin/bash
if [ ! -e "config.sh" ]; then
    echo "####### config.sh is not exist #######"
    echo "Please create config.sh by copying config.sample.sh"
    exit 1
fi

if [ ! -x "config.sh" ]; then
    chmod +x config.sh
fi

source config.sh

sed -e "s&your_CFAL_path&${YOUR_CFAL_DIR}&g" collect_file_access_log.sample.sh | sed -e "s&your_home_dir&${YOUR_HOME_DIR}&g" > collect_file_access_log.sh
sed -e "s&your_CFAL_path&${YOUR_CFAL_DIR}&g" collect_file_access_log.sample.service > collect_file_access_log.service

cp collect_file_access_log.service ~/.config/systemd/user/

if [ ! -x "collect_file_access_log.sh" ]; then
    chmod +x collect_file_access_log.sh
fi

touch access_log
