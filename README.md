本ツールは，ホームディレクトリ以下のファイルアクセス履歴を収集するためのものである．  
Original CFAL made by ikeda-yuko: https://github.com/ikeda-yuko/CFAL

# Install fswatch
+ https://github.com/emcrisostomo/fswatch

## Linux
1. `$ sudo apt install fswatch`

aptでインストールできない場合，

1. `$ wget https://github.com/emcrisostomo/fswatch/releases/download/1.14.0/fswatch-1.14.0.tar.gz`
2. `$ tar -zxvf fswatch-1.14.0.tar.gz`
3. `$ cd fswatch-1.14.0`
4. `$ ./configure`
5. `$ make`
6. `$ sudo make install`
7. `$ sudo ldconfig`

## Mac OS X
```
# MacPorts
$ port install fswatch
	
# Homebrew
$ brew install fswatch
```

# Install CFAL

1. clone this repository

```
$ git clone git@github.com:Ryota0312/CFAL.git
$ cd CFAL
```

2. copy and modiry config file
   
```
$ cp config.sample.sh config.sh
```

example

```
export YOUR_CFAL_DIR="/home/yamada/Projects/CFAL"
export YOUR_HOME_DIR="/home/yamada"
export YOUR_IGNORE_FILE='--exclude "/home/yamada/ignore_path/.*" --exclude "/home/yamada/exclude_path/.*"'
```

3. Make dir if you don't have (**only for Linux!**)

```
$ mkdir ~/.config/systemd/user
```

4. initialize

execute initialize.sh
```
$ ./initialize.sh
```

5. Enable and Start

```
$ ./start.sh
```

# Stop and Restart

 ```
 $ ./stop.sh
```

 or

 ```
 $ ./restart.sh
 ```

# トラブルシューティング
+ Linux で「inotify_add_watch: デバイスに空き領域がありません」というエラーが出る場合

`/proc/sys/fs/inotify/max_user_watches` の値が小さいことが原因で発生している．

1. `$ sudo emacs /etc/sysctl.conf`

`fs.inotify.max_user_watches = XXXXXX` を追記．`XXXXXX` はホームディレクトリ以下のファイル数程度が良いはず．

2. `sudo /sbin/sysctl -p`

