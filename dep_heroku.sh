HTTPCODE=`curl -s -o /dev/null -w "%{http_code}" https://fierce-atoll-83490.herokuapp.com/`
if [ "$HTTPCODE" -ne 200 ];then
    echo "heroku app not responding, failing deploy"
    exit 1
fi
