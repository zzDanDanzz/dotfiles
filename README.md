# dotfiles
Dan's configs and stuff

## bashrc
`~/.bashrc`

## init.vim
`~/.config/nvim/init.vim`

## tmux
note: tmux loads `~/.bash_profile` (and other stuff) but not `~/.bashrc`

had to `cp .bashrc .bash_profile`

and in Ubuntu where it does this thing: 
```bash
case "$TERM" in
    xterm-color|*-256color|screen) color_prompt=yes;;
esac
```

you wanna check what $TERM tmux is using with 
```echo $TERM```

and add that to the list
