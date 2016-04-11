#!/bin/bash


# Cosa copiare. 
#backup_files="/home /var/spool/mail /etc /root /boot /opt"
backup_files="/Users/vicini/didattica/metodi_computazionali"

# Dove fare la copia di backup.
#dest="/mnt/backup"
dest="/Users/vicini/bck"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Stampa messaggio di avvio.
echo "Copia di backup di $backup_files in $dest/$archive_file"
date
echo

# Esegue il backup con tar.
tar czf $dest/$archive_file $backup_files

# Stampa messaggio di fine backup.
echo
echo "Backup completato"
date

# Elenco dei file in $dest per controllarne la dimensione
ls -lh $dest