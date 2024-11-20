#!/bin/bash

# создаем папки для сортировки
mkdir -p Images Documents

# сортируем файлы по расширению
for file in *; do
    if [[ "${file}" == *.jpg || "${file}" == *.png || "${file}" == *.gif ]]; then
        mv "${file}" Images/
    elif [[ "${file}" == *.txt || "${file}" == *.pdf || "${file}" == *.docx ]]; then
        mv "${file}" Documents/
    fi
done

# пишем лог о сортировке
echo "сортировка завершена." >> sort.log

read -p "нажмите enter, чтобы закрыть окно."
