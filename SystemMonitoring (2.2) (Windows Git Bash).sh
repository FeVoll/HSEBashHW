#!/bin/bash

# загрузка процессора
echo "загрузка процессора:"
awk -v FS=" " '/cpu / {usage=($2+$4)*100/($2+$4+$5); printf "%.2f%%\n", usage}' /proc/stat

# использование памяти
echo "использование памяти:"
total_mem=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
available_mem=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
used_mem=$((total_mem - available_mem))
mem_usage=$((used_mem * 100 / total_mem))
echo "${mem_usage}%"

# дисковое пространство
echo "использование дискового пространства:"
df -h | grep '^/dev'

# уведомление при высоком использовании памяти
if [ "$mem_usage" -gt 80 ]; then
    echo "внимание: использование памяти превышает 80%!"
fi

read -p "нажмите enter, чтобы закрыть окно."
