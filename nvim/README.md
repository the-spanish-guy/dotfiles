# NEOVIM configs

> Minhas configurações para o [neo**vim**](https://github.com/neovim/neovim)

## Instalação

- Instalação via script via script

```bash
bash <(curl -s https://raw.githubusercontent.com/the-spanish-guy/dotfiles/master/nvim/install.sh)
```

- Instalando o [vim-plug](https://github.com/junegunn/vim-plug)

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

- Para instalar, basta rodar o comando abaixo

```sh
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/the-spanish-guy/dotfiles/master/nvim/init.vim
```

lista dos plugins instalados:

- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - Para usa-lo basta fazer `ctrl n` e ele irá selecionar as palavras após aperte `c` e você será capaz de editar todas as palavras que estão sublinhadas.

  ```sh
  Plug 'terryma/vim-multiple-cursors'
  ```

- [vim-polyglot](https://github.com/sheerun/vim-polyglot) - Syntax para vim, se usar template string no js ele irá reconhcer.

  ```sh
  Plug 'sheerun/vim-polyglot'
  ```

- [fzf.vim](https://github.com/junegunn/fzf.vim) - Permite pesquisar uma ocorrências em todos os arquivos na pasta raiz, para usar basta digitar o comando `: Files` ou pelo prefixo `ctrl + p`.
  Caso faça uso do [silver search](https://github.com/ggreer/the_silver_searcher) basta digitar os seguintes comandos `ctrl + f` e o fzf se integrará automaticamente com o silver search.

  ```sh
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  ```

- [ncm2](https://github.com/ncm2/ncm2) - Autocomplete, basta digitar e ele irá sugerir autocomplete automaticamente, basta escolher com a seta pra baixo &#8595; e teclar enter para confirmar a seleção.

  > Se você usa o [nvim-completion-manager](https://github.com/roxma/nvim-completion-manager) sugiro mudar para o [ncm2](https://github.com/ncm2/ncm2) pois o antigo não tem mais suporte.

  ```sh
  Plug 'ncm2/ncm2'
  ```

- [ale](github.com/w0rp/ale) - Caso tenha algum lint configurado o ale irá se integrar automaticamente com ele e mostrará os erros.

  ```sh
  Plug 'w0rp/ale'
  ```

- [auto-pairs](https://github.com/jiangmiao/auto-pairs) - insere os pares de `(), {}, []` sempre que abrir um dos caracteres ele irá fecha-los automaticamente.

  ```sh
  Plug 'jiangmiao/auto-pairs'
  ```

- [UltiSnips](https://github.com/sirver/UltiSnips) - Carregue ou crie snippets para seu uso

  ```sh
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  ```
