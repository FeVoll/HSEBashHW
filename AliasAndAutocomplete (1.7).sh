#!/bin/bash

# создаем alias для ls -la
echo "создаём алиас для 'ls -la' как 'll'..."
alias ll='ls -la'
echo "alias ll='ls -la'" >> ~/.bashrc

# создаем дополнительные алиасы
echo "создаём дополнительные алиасы..."
alias gs='git status'
echo "alias gs='git status'" >> ~/.bashrc

alias gp='git pull'
echo "alias gp='git pull'" >> ~/.bashrc

alias home='cd ~'
echo "alias home='cd ~'" >> ~/.bashrc

# демонстрируем использование алиасов
echo "демонстрируем использование алиаса ll:"
ll

# демонстрируем использование автодополнения
echo "демонстрация автодополнения:"
echo "введите команду 'cd' и нажмите TAB для автодополнения директории."

# показываем, где алиасы хранятся
echo "все созданные алиасы добавлены в ~/.bashrc. чтобы они стали постоянными, выполните:"
echo "source ~/.bashrc"

# финальное сообщение
read -p "нажмите enter, чтобы закрыть окно."
