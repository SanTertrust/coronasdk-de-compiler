#!/bin/bash
check_file_exists() {
    if [ ! -f "$1" ]; then
        echo "нету $1"
        exit 1
    fi
}

check_file_exists "./unluac.jar"
check_file_exists "./corona-archiver.py"
check_file_exists "./resource.car"

mkdir -p "out"
mkdir -p "decompiled"

echo "распаковка скриптов.."
python3 corona-archiver.py -u ./resource.car ./out

echo "декомпилирование.."
files=(./out/*)
total_files=${#files[@]}

for ((i=0; i<total_files; i++)); do
    file=${files[i]}
    filename=$(basename "$file")
    java -jar unluac.jar "$file" --output "decompiled/$filename.lua"
    echo "($((i + 1)) / $total_files) декомпилирован файл $file"
done

echo "декомпилирование завершено"
