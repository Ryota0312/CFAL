if [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    # for Linux
    systemctl --user stop collect_file_access_log.service
    systemctl --user disable collect_file_access_log.service
elif [ "$(uname)" == 'Darwin' ]; then
    # for Mac OS X
    launchctl stop collect_file_access_log
    launchctl unload ~/Library/LaunchAgents/collect_file_access_log.plist
fi
