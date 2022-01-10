mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": 80,
  "database": {
    "type": "mysql",
    "user": "$MYSQLUSER",
    "password": "$MYSQLPASSWORD",
    "host": "$MYSQLHOST",
    "port": $MYSQLPORT,
    "name": "$MYSQLDATABASE",
    "table_prefix": "x_",
    "db_file": "/opt/alist/data/data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": $CACHE_EXPIRATION,
    "cleanup_interval": $CACHE_CLEANUP_INTERVAL
  }
}
EOF

cd /opt/alist
./alist -conf data/config.json