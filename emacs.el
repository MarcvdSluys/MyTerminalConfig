;; emacs.el: general emacs settings
;;
;; MvdS, 2021-11-23


;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
; (setq frame-title-format
;      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
;; (setq diff-switches "-u")

;; always end a file with a newline
(setq require-final-newline 'query)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(current-language-environment "English")
 '(display-time-mode nil)
 '(frame-title-format "%b" t)
 '(global-font-lock-mode t nil (font-lock))
 '(inhibit-startup-screen t)
 '(line-number-display-limit-width 1000)
 '(make-backup-files nil)
 '(scroll-bar-mode 'right)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(transient-mark-mode nil)
 '(truncate-lines t))


;; General:

;; Default major mode is org-mode:
(setq-default major-mode 'org-mode)

;; Sh-mode if bash shebang is present:
(add-to-list 'interpreter-mode-alist '("#!/bin/bash" . sh-mode))

;; Sh mode for files starting with bashrc*:
(add-to-list 'auto-mode-alist '("bashrc.*\\'" . sh-mode) )

;; Makefile mode for files starting with Makefile, configuration mode for files ending in rc:                                                                                                                                                                                  
(add-to-list 'auto-mode-alist '("Makefile.*\\'" . makefile-mode) )

;; Html mode for .htm(l) files - no longer happens by default since 2018-09:
(add-to-list 'auto-mode-alist '("\\.html*\\'" . html-mode) )

;; Configuration mode for files ending in *rc:
(add-to-list 'auto-mode-alist '(".*rc$" . conf-space-mode) )

;; Crontab mode for crontab.* files:
(add-to-list 'auto-mode-alist '("crontab.*\\'" . crontab-mode) )


;; Move cursor by camelCase - http://ergoemacs.org/emacs/emacs_subword-mode_superword-mode.html
(global-subword-mode 1)

;; Show path in buffer:
(require 'uniquify)
;; Postfix path after file name:
;;(setq uniquify-buffer-name-style 'reverse)
;; Prefix path before file name:
(setq uniquify-buffer-name-style 'forward)


;; Allow copying from X11's primary selection rather than clipboard selection using C-y:
;; http://xahlee.blogspot.co.at/2012/07/copypaste-in-linux-x11-and-emacs-24.html
(setq x-select-enable-clipboard nil)
(setq x-select-enable-primary t)

;; Don't match single space when searching for multiple spaces:
(setq search-whitespace-regexp nil)

