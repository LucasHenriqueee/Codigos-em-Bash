#!/usr/bin/env bash

##
# Esse script é responsável por criar um menu principal para
# a aplicação do oráculo na rede
# Lucas Ventura 17/06/2024
##

function sub_menu1(){
    clear;
    echo ""
    echo "$(ColorBlue '[*]') Você está no subMenu 1"
    echo ""
}

function sub_menu2(){
    clear;
    echo ""
    echo "$(ColorBlue '[*]') Você está no Sub Menu 2"
    echo ""
}

function sub_menu3(){
    clear;
    echo ""
    echo "$(ColorBlue '[*]') Você está no Sub Menu 3"
    echo ""
}

function sub_menu4(){
    clear;
    echo ""
    echo "$(ColorBlue '[*]') Você está no Sub Menu 4"
    echo ""
}

function sub_menu5(){
    clear;
    echo ""
    echo "$(ColorBlue '[*]') Você está no Sub Menu 5"
    echo ""
}

##
# Adicionando cores nas variaveis
##
gree='\e[32m'
blue='\e[34m'
clear='\e[0m'
red='\e[31m'

##
# Funcao de cores
##

ColorGreen(){
    echo -ne "$gree$1$clear"
}
ColorBlue(){
    echo -ne "$blue$1$clear"
}

##
# Criando a funcao menu
##

menu(){
echo -ne "
----------------------------------------------------
    ***************Menu Principal***************
----------------------------------------------------
$(ColorGreen '1)') Opção 1
$(ColorGreen '2)') Opção 2
$(ColorGreen '3)') Opção 3
$(ColorGreen '4)') Opção 4
$(ColorGreen '5)') Opção 5
$(ColorGreen '0)') Exit
$(ColorBlue 'Escolha uma opção:') "
    read a
    case $a in
        1) sub_menu1 ; menu ;;
        2) sub_menu2 ; menu ;;
        3) sub_menu3 ; menu ;;
        4) sub_menu4 ; menu ;;
        5) sub_menu5 ; menu ;;
    0) exit 0 ;;
    *) echo -e $red"[-] Opção Inválida!"$clear; WrongCommand;;
    esac

}

##
# Chama o menu principal
##
menu