mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": 5244,
  "database": {
    "type": "$DB_TYPE",
    "user": "$PGUSER",
    "password": "$PGPASSWORD",
    "host": "$PGHOST",
    "port": $PGPORT,
    "name": "$PGDATABASE",
    "table_prefix": "x_",
    "db_file": "/opt/alist/data/data.db",
    "ssl_mode": "require"
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