## Install the `.vimrc` configuration file
```sh
ls -l .vimrc ~/.vimrc
```

## Vim Pack Articles

### Installing Vim(8( plugins with the native pack system.
https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea

```sh
# make the pack folder a git repository
cd ~/.vim/pack
git init

# add as many plugins as you want in the desired
# package directories

# for example, lets add NERDtree and its git plugin
# as autoloaded in plugins/ directory
git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree
git submodule add https://github.com/Xuyuanp/nerdtree-git-plugin plugins/start/nerdtree-git-plugin

# lets also add the one color scheme in the colors/ directory
git submodule add https://github.com/rakr/vim-one.git colors/start/one

# and optinaly, we want the elixir syntax and compiler tools under syntax/
git submodule add https://github.com/elixir-lang/vim-elixir syntax/opt/elixir

# start vim and configure the plugins as desired :)
cd -
vim ~/.vimrc

# when need to update,
# it is just a matter of updating submodules
git submodule update --remote --merge
git commit
```
