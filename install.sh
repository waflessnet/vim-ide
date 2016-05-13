#!/bin/bash
#autor: Francisco Céspedes.
#email: ncwapuntes@gmail.com
D=$(pwd);
echo "creando directorios para vim"
mkdir -p $HOME/.vim/{bundle,autoload,backup_files,colors,swap_files,undo_files}
echo "Instalando pathogen"
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Instalando bundles"
cd $HOME && cd ./.vim/bundle
pwd
grep -v '^#' $D/bundles.txt| while read p; do
	git clone $p  
done
echo "Bundles instalados \n "
echo "Copiamos colores"
cd $D
cp colors/*.vim $HOME/.vim/colors/
echo "Copia de vimrc a .vimrc"
cp vimrc $HOME/.vimrc
vim -c :Helptags -c :qall
echo "Vim waflessnet instalado."

