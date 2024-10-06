#!/bin/bash
check_file_exists() {
    if [ ! -f "$1" ]; then
        echo "нету $1"
        exit 1
    fi
}

if [ ! -d "compile" ]; then
    echo "нет папки ./compile"
    exit 1
fi

check_file_exists "./corona-archiver.py"

echo "упаковка скриптов.."
python3 corona-archiver.py -p ./compile ./resource.car.new
echo "упаковка завершена"
