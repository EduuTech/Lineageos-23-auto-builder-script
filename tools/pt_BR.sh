#!/usr/bin/env bash

WELCOME="Bem Vindo ao meu auto builder de lineageos"
ASK_EMAIL="Qual o seu email (E pro repo)"
ASK_BLOB="Qual é a pasta que debaixo da parte \"Extract Proparytery blobls\""
WRITE="Escreva Aqui:"
QUES="[S/N]"
ASK_NAME="Qual seu nome (Pro repo mais pode botar qualquer)"
ASK_CODE="O que aparece no bloco de codigo do \"Prepare the device-specific code\""
WARN_CODE="Escreva o que esta escrito depois de breakfeast"
EX_CODE="Ex:rosemary"
ASK_ZIP="Por favor,baixe o instale o instalador .zip pro seu dispositivo"
ZIP_EX="Ex:/home/myuser/Lineage_algo23.zip"
ASK_SIGN="Voce vai querer build assinada ou nao $QUES"
ERROR_CODE="Erro:Voce errou o codenome ou o download falhou"
ERROR_FILE="Arquivo nao encontrado!"
ERROR_ZIP="Arquivo nao encontrado"
ERROR_BLOB="Pasta errada"
WAIT_CODE="Tome um cafe ou faça algo,pois vai demorar..."
THINK_CODE="Eu acho que vice quis dizer nao assinado"

export GKI WELCOME ASK_EMAIL ASK_BLOB WRITE QUES ASK_NAME WARN_CODE EX_CODE ASK_ZIP ZIP_EX ASK_SIGN ERROR_CODE ERROR_FILE ERROR_ZIP ERROR_BLOB WAIT_CODE THINK_CODE

exec ../build.sh 