#!/bin/bash

# создаем директорию для бэкапа с текущей датой
backup_dir="backup_$(date +%Y%m%d)"
mkdir "$backup_dir"

# копируем все файлы в эту директорию
for file in *; do
    cp "${file}" "$backup_dir/"
done

# пишем в лог сколько файлов скопировано
echo "сделана резервная копия $(ls "$backup_dir" | wc -l) файлов." > backup.log

read -p "нажмите enter, чтобы закрыть окно."
