#bashrc functions

ranger_cd() {
    tempfile="$(mktemp -t ranger_cd.XXXXXX)"
    ranger --choosedir="$tempfile" "$@"
    if [ -f "$tempfile" ] && [ "$(cat "$tempfile")" != "$(pwd)" ]; then
        cd "$(cat "$tempfile")" || return
    fi
    rm -f "$tempfile"
}

gitupd() {
  git checkout main
  git pull
  git checkout $1
  git merge main
  git push
}

gitplm() {
  git checkout main
  git pull
  git checkout $1
}

gitco() {
  git commit -m "$1"
}

gitch() {
  git checkout $1
}

export -f ranger_cd gitupd gitplm gitco gitch
