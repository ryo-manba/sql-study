docker-compose up -d # 両方起動
docker-compose up -d pgsql_study # postgresql 起動
docker-compose up -d mysql_study # mysql 起動
psql -h 127.0.0.1 -U dev     # postgresql 接続
mysql -h 127.0.0.1 -u dev -p # mysql 接続
