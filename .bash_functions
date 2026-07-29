#bashrc functions

ranger_cd() {
    tempfile="$(mktemp -t ranger_cd.XXXXXX)"
    ranger --choosedir="$tempfile" "$@"
    if [ -f "$tempfile" ] && [ "$(cat "$tempfile")" != "$(pwd)" ]; then
        cd "$(cat "$tempfile")" || return
    fi
    rm -f "$tempfile"
}

gm() {
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

ym() {
  mpv $1 --no-video
}

clVar() {
  sudo pacman -Scc
  sudo journalctl --vacuum-size=100M
  sudo du -sh /var/cache/*
}

ms() {
  cp ~/.config/sway/config ~/.config/sway/flag
  cp ~/.config/sway/.config-switched ~/.config/sway/config
  cp ~/.config/sway/flag ~/.config/sway/.config-switched
}

nt() {
  echo "- $1" >> ~/notes.txt
}

clnt() {
  echo -e "*** Notes $1 ***\n" > ~/notes.txt
}

bkup() {
  gocryptfs /run/media/$1/RABACKUP1/.files/dotFiles/ ~/Downloads/encript
}

export -f ranger_cd gm gplm gc gk ym clVar ms nt clnt bkup
