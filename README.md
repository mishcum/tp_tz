# Техническое задание №1
## Скрипт на bash
Скрипт принимает два параметра - ***входную*** директорию и ***выходную*** директорию.
Данный скрипт "обходит" входную директроию и её вложенные директории _(уровень вложенности может быть любой)_, копирует все файлы и переносит их в выходную директорию. 
Проблема с файлами, имеющими одинаковое название __решена__ следующим образом: если в списке перемещённых файлов уже содержится название файла, который должен переместиться следующим, то в его название будет добавлено число, например `(5)file.txt`.

## Скрипт `first_tz.sh`

Выводит информацию о том, из какой директории и с каким названием был скопирован файл, например:
```
mishasmacbook@MacBook-Pro-Mishas tp_tz % ./first_tz.sh tp_hse/tests/tests1 tp_hse/tests/tests4
--------------------------
Your input directory:
tp_hse/tests/tests1
Your output directory:
tp_hse/tests/tests4
New location:
tp_hse/tests/tests1/file4 -------> tp_hse/tests/tests4/file4
tp_hse/tests/tests1/file5 -------> tp_hse/tests/tests4/file5
tp_hse/tests/tests1/tests3/file6 -------> tp_hse/tests/tests4/file6
tp_hse/tests/tests1/tests3/file7 -------> tp_hse/tests/tests4/file7
--------------------------
```
## Скрипт `first_tz_without_info.sh`
Осуществляет копирование файлов без вывода какой-либо дополнительной информации.
