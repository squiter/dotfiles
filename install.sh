files=( bash_profile alias vim vimrc gitconfig gitignore_global tmux.conf zshrc bin )

for filename in ${files[@]}
do
[[ -s $HOME/.$filename ]] && rm -rf $HOME/.$filename
  ln -sfi $PWD/$filename ~/.$filename
done

source ~/.bash_profile
