[Unit]
Description = CFAL daemon
ConditionPathExists = your_CFAL_path

[Service]
ExecStart = /bin/sh -c 'exec your_CFAL_path/collect_file_access_log.sh 1>> your_CFAL_path/access_log 2>> your_CFAL_path/error_log'
ExecStop=/bin/kill -QUIT $MAINPID
### These settings can use on systemd version grater than 236.
#StandardOutput = file:your_CFAL_path/access_log
#StandardError = file:your_CFAL_path/error_log
Restart = always
Type = simple
LimitNOFILE=65536

[Install]
WantedBy = default.target