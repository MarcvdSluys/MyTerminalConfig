# My terminal config #

My generic configuration files for bash, emacs and git for easy download on a remote machine.

## Clone ##
```bash
cd
git clone https://github.com/MarcvdSluys/MyTerminalConfig.git .myconfig
```

## Bash ##

In your `~/.bashrc`, add e.g.
```bash
. ~/.myconfig/bashrc
```

## Emacs ##

In your `~/.emacs.d/init.el` or `~/.emacs`, add e.g.
```lisp
(add-to-list 'load-path "~/.myconfig")
(load "emacs")
```

## Git ##

In `~/.gitconfig`, add a section like
```conf
[include]
	path = ~/.myconfig/gitconfig
```
