#!/bin/bash

# Проверяем наличие команды lsb_release
if ! command -v lsb_release &> /dev/null; then
    echo "Команда lsb_release не найдена. Пожалуйста, установите пакет 'lsb-release'."
    exit 1
fi

# Выводим информацию о версии Ubuntu
lsb_release -a | grep Description
