<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
        <key>Label</key>
        <string>collect_file_access_log</string>
        <key>ProgramArguments</key>
        <array>
          <string>/bin/sh</string>
          <string>your_CFAL_path/collect_file_access_log.sh</string>
        </array>

        <!-- Specify a standard output file -->
        <key>StandardOutPath</key>
        <string>your_CFAL_path/access_log</string>

        <!-- Specify a standard error file -->
        <key>StandardErrorPath</key>
        <string>your_CFAL_path/error_log</string>

        <key>KeepAlive</key>
        <true/>
</dict>
</plist>
