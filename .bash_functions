#bashrc functions

ranger_cd() {
    tempfile="$(mktemp -t ranger_cd.XXXXXX)"
    ranger --choosedir="$tempfile" "$@"
    if [ -f "$tempfile" ] && [ "$(cat "$tempfile")" != "$(pwd)" ]; then
        cd "$(cat "$tempfile")" || return
    fi
    rm -f "$tempfile"
}

gupd() {
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

gco() {
  git commit -m "$1"
}

export -f ranger_cd gupd gplm gco
