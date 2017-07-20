if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

gpb() {
  branch_name=$(git symbolic-ref --short -q HEAD)
  git push origin $branch_name
}

gpbf() {
  branch_name=$(git symbolic-ref --short -q HEAD)
  git push origin $branch_name -f
}

plugins=(git)

SBT_OPTS="-Xms8g -Xmx16g"

cd ~/dev/haven

alias cm="git commit -m"
alias gco="git checkout"
