# My terminal configuration #

My generic configuration files for bash, emacs and git for easy download on a remote machine.


## Clone ##

Clone into a subdirectory of your home dir, e.g. `~/.myconfig/`:
```bash
cd
git clone https://github.com/MarcvdSluys/MyTerminalConfig.git .myconfig
```


## Bash ##

In `~/.bash_profile`, add e.g.
```bash
# My generic bash configuration:
. ~/.myconfig/bash_profile
```

In `~/.bashrc`, add e.g.
```bash
# My generic bash configuration:
. ~/.myconfig/bashrc
```

Note that `~/.myconfig/bash_profile` and `~/.myconfig/bashrc` will source all files called `bash_profile_*`
and `bashrc_*` respectively in the directory `~/.myconfig/`.  Hence you could add e.g. `bash_profile_local`
and/or `bashrc_local` with local settings.  Also note that the path `~/.myconfig/` is hardcoded in
`bash_profile` and `bashrc`.


## Emacs ##

In `~/.emacs.d/init.el` or `~/.emacs`, add e.g.
```lisp
;; My generic emacs configuration:
(add-to-list 'load-path "~/.myconfig")
(load "emacs")
```


## Git ##

In `~/.gitconfig`, add a section like
```config
# My generic git configuration:
[include]
	path = ~/.myconfig/gitconfig
```

