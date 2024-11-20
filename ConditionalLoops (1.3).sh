#!/bin/bash

# запрашиваем число у пользователя
read -p "введите число: " number

# проверяем, что за число
if [ "$number" -gt 0 ]; then
    echo "число положительное."
elif [ "$number" -lt 0 ]; then
    echo "число отрицательное."
else
    echo "число равно нулю."
fi

# если число положительное, считаем от 1 до введенного числа
if [ "$number" -gt 0 ]; then
    count=1
    while [ "$count" -le "$number" ]; do
        echo "$count"
        count=$((count + 1))
    done
fi

read -p "нажмите enter, чтобы закрыть окно."