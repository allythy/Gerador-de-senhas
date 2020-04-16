##!/usr/bin/env bash
while [ "$menu" != "n" -a "$menu" != "N" ]
do
	echo
	read -p "Informe a quantidade de senhas: " qtdSenha
	read -p "Informe a quantidade de caracteres da senha: " qtdCaracteres
	echo
	for i in $(seq $qtdSenha);
    do
		cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%&*+' | fold -w $qtdCaracteres | head -n1
    done
	echo
	read -p "Deseja voltar ? [S/n]" menu
	echo
done
