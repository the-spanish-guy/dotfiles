#!/bin/bash

DESTINATION_FOLDER=~/dotfiles_spanish

installVimPlug() { \
	echo "installing Vim-plug"

	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  	  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	echo "done"
}

cloneProject() { \
	echo "cloning nvim configs"
	git clone https://github.com/the-spanish-guy/dotfiles.git  ${DESTINATION_FOLDER}
	mkdir ~/.config/nvim -p
	cp -r ${DESTINATION_FOLDER}/.config/nvim/lua ${DESTINATION_FOLDER}/.config/nvim/settings ${DESTINATION_FOLDER}/.config/nvim/coc-settings.json ${DESTINATION_FOLDER}/.config/nvim/init.vim ~/.config/nvim

	echo "removing repo"
}

installPynvim(){ \
	python3 -m pip install --upgrade pip
	python3 -m pip install pynvim
}

init() { \
	echo "starting download"
	installVimPlug
	cloneProject
	installPynvim	

	rm -rf ${DESTINATION_FOLDER}
	echo "configurations successfully installed"
}

init

