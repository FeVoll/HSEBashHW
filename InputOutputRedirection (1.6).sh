#!/bin/bash

# читаем данные из файла
cat input.txt

# считаем строки и сохраняем результат в output.txt
wc -l < input.txt > output.txt

# сохраняем ошибки в error.log
ls nonexistent_file 2> error.log

read -p "нажмите enter, чтобы закрыть окно."
