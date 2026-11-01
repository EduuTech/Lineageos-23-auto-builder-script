#!/usr/bin/env bash

QUES="S/C"
ASK_COUNTRY="Qual o pais que voce mora(Pode ser qualquer um)"
WARN_COUNTRY="Escreva a sigla,nao o nome"
ASK_STATE="Estado (Pode ser qualquer um)"
WARN_STATE="Esse e os procimos nao precisa da sigla"
WRITE="Escreva aqui:"
ASK_CITY="Cidade (Pode ser qualquer um)"
ASK_PASS="Vai querer sem ou com senha $QUES"
NON_PASS="Spame enter"
WITH_PASS= "Escreva sua senha quantas vezes o s ript pedir (Normalmente é \"Type your password\")"

export QUES ASK_COUNTRY ASK_CITY ASK_STATE WARN_COUNTRY WARN_COUNTRY WARN_STATE WRITE ASK_PASS NON_PASS WITH_PASS

exec ../sign.sh