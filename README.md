# shadowsocks-server-dockerfile
Running shadowsocks server on docker

## Tutorial

Sample beginning:

    $ sudo docker run -p 8388:8388 e3rp4y/shadowsocks-server-dockerfile
    
Then, we can connect to shadowsocks by clients.

## Advanced

Environment Variables:

* `SS_ENV_PASSWORD` shadowsocks password
* `SS_ENV_METHOD` shadowsocks method
* `SS_ENV_PORT` shadowsocks listen port
* `SS_ENV_TIMEOUT` shadowsocks timeout
* `SS_ENV_USER` shadowsocks run on which user
* `SS_ENV_LOGFILE` shadowsocks log file path

Because Great Firewall always ban shadowsocks default port. So, change listen port is a good way, or change docker port forward is work well.

If you want to share your shadowsocks to everyone, we are wellcome, if not, change password please.

Recommend startup command:

    $ sudo docker run --rm -e SS_ENV_PASSWORD=<password> -p 23333:8388 e3rp4y/shadowsocks-server-dockerfile
