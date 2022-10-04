#!/bin/bash
##############
#CORES
x="opt"
set -e

VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'

menu () {
    while true $x != "opt"
    do
        clear
        echo -e "${VERMELHO}================GERENCIANDO SERVIDOR================${SEM_COR}"
        echo ""
        echo -e "${VERDE}========================MENU========================"
        echo "1) Instalar ou Remover Pacote/Servico"
        echo "2) Backup"
        echo "3) Atualizar sistema" 
        echo "4) Sair"
        echo -e "========================MENU========================${SEM_COR}"
        echo ""
        echo "Digite a opcao:"
        read x
        echo "Opcao informada $x"
        echo ""

        menu1=0
        menu2=0

        case "$x" in
            1)
                while [ $menu1 -ne 11 ]
                do
                    clear
                    echo -e "${VERDE}=============INSTALAR OU REMOVER PACOTE============="
                    echo " 1 - Para Instalar ou Remover - SSH"
                    echo " 2 - Para Instalar ou Remover - FTP Server"
                    echo " 3 - Para Instalar ou Remover - DHCP Server"
                    echo " 4 - Para Instalar ou Remover - DNS Server"
                    echo " 5 - Para Instalar ou Remover - PROXY Server"
                    echo " 6 - Para Instalar ou Remover - SAMBA"
                    echo " 7 - Para Instalar ou Remover - TOMCAT"
                    echo " 8 - Para Instalar ou Remover - APACHE"
                    echo " 9 - Para Instalar ou Remover - SARG"
                    echo "10 - Para Instalar ou Remover qualquer outro pacote"
                    echo "11 - Voltar"
                    echo -e "=============INSTALAR OU REMOVER PACOTE=============${SEM_COR}"
                    echo ""
                    echo "Digite a opcao:"
                    read menu1
                    echo "Opcao informada $menu1"
                    echo ""

                    case "$menu1" in
                        1)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o SSH? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install ssh
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge ssh
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        2)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o FTP? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install proftpd
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge proftpd
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        3)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o DHCP? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install isc-dhcp-server
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge isc-dhcp-server
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        4)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o DNS? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install bind9 bind9-utils
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge bind9 bind9-utils
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        5)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o PROXY? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install squid
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge squid
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        6)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o SAMBA? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install samba
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge samba
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        7)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o TOMCAT? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install default-jdk curl
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge default-jdk curl
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        8)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o APACHE? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install apache2
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge apache2
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        9)
                            clear
                            echo -e "${VERDE}Deseja Instalar ou Remover o SARG? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get install sarg
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando SSH...${SEM_COR}"
                                echo ""
				                    apt-get purge sarg
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        10)
                            clear
                            echo -e "${VERDE}Informe o nome do Pacote a ser Instalado: ${SEM_COR}"; read install
                            echo ""
                            echo -e "${VERDE}Deseja Instalar ou Remover o $install? (1 - Instalar / 2 - Remover)${SEM_COR}" ; read opc
				            if [ $opc = '1' ]
                            then
                                echo ""
				                echo -e "${VERDE}Instalando $install...${SEM_COR}"
                                echo ""
				                    apt-get install $install
                                echo ""
                                echo -e "${VERMELHO}INSTALADO!${SEM_COR}"
                            elif [ $opc = '2' ]
                            then
                                echo ""
                                echo -e "${VERDE}Desinstalando $install...${SEM_COR}"
                                echo ""
				                    apt-get purge $install
                                echo ""
                                echo -e "${VERMELHO}REMOVIDO!${SEM_COR}"
                            else
                                echo -e "${VERMELHO}OPCAO NAO ENCONTRADA!${SEM_COR}" 
                            fi
                            sleep 3
                        ;;
                        11)
                            echo "Saindo..."
                            sleep 3
                            clear;
                        ;;
                        *) 
                            echo "Valor Informado Inválido"
                        esac
                done
            ;;
            2)
                while [ $menu2 -ne 3 ]
                do
                    clear
                    echo -e "${VERDE}=======================BACKUP======================="
                    echo " 1 - Copia normal"
                    echo " 2 - Compactado"
                    echo " 3 - Voltar"
                    echo -e "=======================BACKUP=======================${SEM_COR}"
                    echo ""
                    echo "Digite a opcao:"
                    read menu2
                    echo "Opcao informacada $menu2"
                    echo ""

                    day=$(date +%d-%m-%Y)
                    fname="backup-$day"

                    case "$menu2" in
                        1)
                            clear
                            echo -e "${VERDE}Copiando...${SEM_COR}"
                            echo ""
                            echo -e "${VERDE}Informe o diretorio da origem da copia: ${SEM_COR}" ; read orig
                            echo -e "${VERDE}Informe o diretorio de destino da copia: ${SEM_COR}" ; read dest
                            mkdir -p $dest
                            cp -R $orig $dest/$fname
                            echo ""
                            echo -e "${VERMELHO}COPIADO!${SEM_COR}"
                            sleep 3
                        ;;
                        2)
                            clear
                            echo -e "${VERDE}Compactando...${SEM_COR}"
                            echo ""
                            echo -e "${VERDE}Informe o diretorio da origem da copia: ${SEM_COR}" ; read orig
                            echo -e "${VERDE}Informe o diretorio de destino da copia: ${SEM_COR}" ; read dest
                            mkdir -p $dest
                            tar -cz $orig -f $dest/$fname.tgz
                            echo ""
                            echo -e "${VERMELHO}Compactado e copiado!${SEM_COR}"
                            sleep 3
                        ;;
                        3)
                            echo "Saindo..."
                            sleep 3
                            clear;
                        ;;
                        *) 
                            echo "Valor Informado Inválido"
                        esac
                done
            ;;
            3)
                echo -e "${VERDE}Atualizando sistema...${SEM_COR}"
                echo ""
                sudo apt-get update && apt upgrade
                echo ""
                echo -e "${VERMELHO}ATUALIZADO!${SEM_COR}"
                sleep 3
            ;;
            4)
                echo -e "${VERMELHO}Saindo...${SEM_COR}"
                sleep 3
                clear;
                exit;
            ;;
            *)
                echo "Valor Informado Inválido"
        esac
    done
}

menu