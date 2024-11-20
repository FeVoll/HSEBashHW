#!/bin/bash

# Вывод файлов в текущей директории
ls -l | awk '{print $1, $9}'

# наличие файла
if [ -e "$1" ]; then
    echo "Файл $1 существует."
else
    echo "Файл $1 не существует."
fi

for file in *; do
    echo "Имя: ${file}, Права доступа: $(ls -ld "${file}" | awk '{print $1}')"
done

read -p "Нажмите Enter, чтобы закрыть окно."