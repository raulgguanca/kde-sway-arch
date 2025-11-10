#bashrc functions

ranger_cd() {
    tempfile="$(mktemp -t ranger_cd.XXXXXX)"
    ranger --choosedir="$tempfile" "$@"
    if [ -f "$tempfile" ] && [ "$(cat "$tempfile")" != "$(pwd)" ]; then
        cd "$(cat "$tempfile")" || return
    fi
    rm -f "$tempfile"
}

gm () {
  git checkout main
  git pull
  git checkout $1
  git merge main
  git push
}

gplm() {
  git checkout main
  git pull
  git checkout $1
}

gc() {
  git add $1 && EDITOR=nvim git commit $1
}

gk() {
  git checkout $1
}

export -f ranger_cd gm gplm gc gk
