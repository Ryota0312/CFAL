#!/bin/bash
/usr/bin/inotifywait -mr -e create,modify,delete,move --exclude "(.*\/\..*)|(^\..*)|(access_log)|(duplicity-full)" --format "%T %w%f %e" --timefmt "%FT%T" your_home_dir -o your_CFAL_path/access_log
