#!/bin/bash
if [ "$(uname -s)" == 'Linux' ]; then
    # for Linux
    systemctl --user enable collect_file_access_log.service
    systemctl --user start collect_file_access_log.service
elif [ "$(uname)" == 'Darwin' ]; then
    # for Mac OS X
    launchctl load ~/Library/LaunchAgents/collect_file_access_log.plist
    launchctl start collect_file_access_log
fi
