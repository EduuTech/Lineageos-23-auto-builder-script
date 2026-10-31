#!/bin/bash

#  MIT License
#
#  Copyright (c) 2026 Dudu-gsh
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.

clear
CORES="$1"
if [[ "$1" == --BUILD ]]; then 
BUILD_JUMP="Y"
else
BUILD_JUMP="N"
fi

if [[ "$1" == --KSU-GKI ]]; then
GKI="Y"
else
GKI="N"
fi

echo "Ola e bem vindo ao meu menu"
sleep 1
echo "Hello and welcome to my menu"
sleep 1
echo "Escolha uma lingua"
echo "Chosse one language"
echo ""
echo "1) English "
echo "2) Portugues"
echo ""
echo "Aviso,quando for escrever,escreva 1 pra portugues ou 2 pra ingles"
sleep 1
echo "Warnig,when your gonna wtite,write 1 for portuguese or 2 for english"
sleep 1
read -rp "Escreva  /  Write:" LANG

if [[ "$LANG" == 2 ]]; then
echo "Voce vai querer adicionar KernelSU ao seu kernel?"
echo "Ele é da versao de surporte sem GKI para 4.14 pra baixo"
read -rp "(S/N)" KERNELSU

    if [[ $KERNELSU =~ ^[Ss]$ ]]; then
        echo "Tabom"
        chmod +x * tools/*
        export USE_KERNELSU=true GKI LANG=pt_BR
        exec tools/pt_BR.sh
        exit 0
    else
        chmod +x * tools/*
        export USE_KERNELSU=false LANG=pt_BR
        exec tools/pt_BR.sh
        exit 0
    fi

elif [[ "$LANG" == 1 ]]; then 
echo "Welcome to my lineageos 23 builder"
echo "You want to add KernelSU to ypur Kernel?"
echo "But it is for NO GKI"
read -rp "(Y/N)" KERNELSU
    if [[ $KERNELSU =~ ^[Yy]$ ]]; then
        echo "Okay"
        chmod +x * tools/*
        export USE_KERNELSU=true GKI LANG=US
        exec tools/US.sh
    elif [[ $KERNELSU =~ ^[nn]$ ]]; then
        echo "Okay"
        chmod +x * tools/*
        export USE_KERNELSU=false LANG=US
        exec tools/US.sh 
else 
echo "Nao entendi meu fi."
echo "I dont understand"
fi