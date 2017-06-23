# environment

  + install inotify-tools
    ```
    $ sudo apt-get install inotify-tools
    ```

  + make dir if you don't have

    ```
    $ mkdir ~/.config/systemd/user
    ```

# start CFAL at Linux

  + clone this repository
    ```
    $ git clone git@github.com:Ryota0312/CFALforLinux.git
    ```

  + copy and modiry config file

    ```
    $ cp config.sample.sh config.sh
    ```

    example

    ```
    export YOUR_CFAL_DIR="/Users/yamada/Projecs"
    export YOUR_HOME_DIR="/Users/yamada"
    export YOUR_IGNORE_FILE=("\/Users\/yamada\/Library\/.*" "\/Users\/yamada\/todo.org"
    ```

  + initialize
    execute initialize.sh
    ```
    $ ./initialize.sh
    ```

  + Enable and Start

     ```
     $ ./start.sh
     ```

# stop and restart CFAL

 ```
 $ ./stop.sh
 ```

 or

 ```
 $ ./restart.sh
 ```
