#!/bin/bash
inpDir="$1"
outDir="$2"
echo "--------------------------"
echo -e "Your input directory:\033[4m"
#read inpDir
echo "$inpDir"
echo -e "\033[24mYour output directory:\033[4m"
echo "$outDir"
#read outDir
files=""
bool=false
cnt=2
echo -e "\033[0mNew location:"
function check() {
    for n in $1
    do
    if test "$n" == "$2"; then 
        bool=true
    fi
    done
}
function check2() {
    for name in $1
    do
    if test "$name" == "(""$cnt"")""$2"; then
        cnt=$(($cnt + 1))
        check2 "$1" "(""$cnt"")""$2"
    fi
    done    
}
function move() {
local fl=$(ls "$1")
for f in $fl
do
if test -f "$1"/"$f"; then
    check "$files" "$f"
    if test "$bool" == "true"; then
        check2 "$files" "$f"
        files=""$files" ""("$cnt")"$f""
        cp "$1"/"$f" ""$outDir""/"("$cnt")""$f"
        echo "$1"/"$f" "------->" "$outDir""/""("$cnt")""$f"
        cnt=2
    else 
        files=""$files" "$f""
        cp "$1"/"$f" "$outDir"
        echo "$1"/"$f" "------->" "$outDir""/""$f"
    fi    
fi
if test -d "$1"/"$f"; then
    move "$1"/"$f"
fi
done
}
move "$inpDir"
echo "--------------------------"


