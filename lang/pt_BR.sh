#!/usr/bin/env bash

# MIT License
# 
# Copyright (c) 2026 Dudu-gsh
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

NON_VERBOSE=false
[[ "$1" == "--NON-VERBOSE" ]] && NON_VERBOSE=true

spinner() {
    local pid=$1 frames='⣾⣽⣻⢿⡿⣟⣯⣷' i=0
    while kill -0 "$pid" 2>/dev/null; do
        printf "\r%s" "${frames:i++%${#frames}:1}"
        sleep .1
    done
}

run() {
    local step=$1; shift

    if $NON_VERBOSE; then
        printf "%s " "$step"
        "$@" >/dev/null 2>&1 &
        local pid=$!
        spinner "$pid"
        wait "$pid" && echo -e "\r✓ $step" || {
            echo -e "\r✗ $step"
            return 1
        }
    else
        echo "==> $step"
        "$@"
    fi
}

if [[ "$BUILD_JUMP" == Y]]; then
THINK_SIGN="Eu acho que voce quis dizer nao assinado"
ASK_SIGN="Voce vai querer build assinada ou nao $QUES"
QUES="[S/N]"
export QUES ASK_SIGN THINK_SIGN GKI spinner run DIR="$SCRIPT_DIR"
cd "$DIR"
exec bash <(tail -n +101 script.sh)
fi

WELCOME="Bem Vindo ao meu auto builder de lineageos"
ASK_EMAIL="Qual o seu email (E pro repo)"
ASK_BLOB="Qual é a pasta que debaixo da parte \"Extract Proparytery blobls\""
WRITE="Escreva Aqui:"
QUES="[S/N]"
ASK_NAME="Qual seu nome (Pro repo mais pode botar qualquer)"
ASK_CODE="O que aparece no bloco de codigo do \"Prepare the device-specific code\""
WARN_CODE="Escreva o que esta escrito depois de breakfeast"
EX_CODE="Ex:rosemary"
ASK_SIGN="Voce vai querer build assinada ou nao $QUES"
ERROR_CODE="Erro:Voce errou o codenome ou o download falhou"
ERROR_FILE="Arquivo nao encontrado!"
ERROR_BLOB="Pasta errada"
WAIT_CODE="Tome um cafe ou faça algo,pois vai demorar..."
THINK_SIGN="Eu acho que vice quis dizer nao assinado"
ERROR_DOWN="O download falhou ou baixou incorretamente"

export GKI WELCOME ASK_EMAIL ASK_BLOB WRITE QUES ASK_NAME WARN_CODE EX_CODE ASK_SIGN ERROR_CODE ERROR_FILE ERROR_BLOB WAIT_CODE spinner run THINK_SIGN LANG ERROR_DOWN DIR="$SCRIPT_DIR"
exec ../build.sh 