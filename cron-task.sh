#!/bin/bash
source /opt/.env
mkdir -p "$BACKUP_DIR"
docker run --rm --network backend -v "$BACKUP_DIR":/backup schnitzler/mysqldump -h "$MYSQL_HOST" -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" > "$BACKUP_DIR/dump_$(date +%Y%m%d_%H%M%S).sql"
ls -tp "$BACKUP_DIR/dump_*.sql" 2>/dev/null | tail -n +$(($KEEP_BACKUPS + 1)) | xargs -I {} rm -- {}
