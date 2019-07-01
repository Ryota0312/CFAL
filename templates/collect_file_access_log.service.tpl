[Unit]
Description = CFAL daemon

[Service]
ExecStart = your_CFAL_path/collect_file_access_log.sh
StandardOutput = your_CFAL_path/access_log
StandardError = your_CFAL_path/error_log
Restart = always
Type = simple
ExecStop=/bin/kill -QUIT $MAINPID
LimitNOFILE=65536

[Install]
WantedBy = default.target