mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": 80,
  "database": {
    "type": "$DB_TYPE",
    "user": "$DB_USER",
    "password": "$DB_PASS",
    "host": "$DB_HOST",
    "port": $DB_PORT,
    "name": "$DB_NAME",
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