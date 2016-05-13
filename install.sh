#!/bin/bash
#autor: Francisco Céspedes.
#email: ncwapuntes@gmail.com
D=$(pwd);
B="~./vim/bundle/"
echo "creando directorios para vim"
mkdir -p ~/.vim/{bundle,autoload,backup_files,colors,swap_files,undo_files}
echo "Instalando pathogen"
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Instalando bundles"

grep -v '^#' bundles.txt| while read p; do
	 
	 git clone $p $B
done
echo "Bundles instalados \n "
echo "Copiamos colores"
cd $D
cp colores/*.vim ~/.vim/colors/
echo "Copia de vimrc a .vimrc"
cp vimrc ~/.vim/colors/
clear
echo "Vim waflessnet instalado."

