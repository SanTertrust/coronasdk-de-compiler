# coronasdk de/compiler sh script
## как использовать
#### на винде я не тестировал
прежде всего нужен python3 и java.

перекидываете resource.car в корневую папку,
запускаете скрипт:
```sh
./decompile.sh
```
если скрипт python потребует какие-то зависимости, то конечно их надо установить.

в папке ./out будут распакованные скрипты, а в ./decompiled декомпилированная их версия.
## как скомпилировать
перекидываете все уже скомпилированные скрипты (для компиляции из lua в lu можно использовать luac) в папку ./compile, и запускаете скрипт:
```sh
./compile.sh
```
и в корневой папке появится файлик resource.car.new
## как работает
для распаковки используется [вот этот репозиторий](https://github.com/0BuRner/corona-archiver), а для декомпилирования [вот этот jar файл](https://sourceforge.net/projects/unluac/).
## если ничего не понял
то тебе оно и не понадобится


![пример](https://github.com/SanTertrust/coronasdk-de-compiler/raw/main/decompileexample.png)
