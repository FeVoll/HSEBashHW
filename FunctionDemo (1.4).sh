#!/bin/bash

# функция выводит строку с hello
hello() {
    echo "hello, $1"
}

# функция считает сумму двух чисел
sum() {
    echo "$(($1 + $2))"
}

# вызываем обе функции
hello "world"
result=$(sum 3 7)
echo "сумма: $result"

read -p "нажмите enter, чтобы закрыть окно."