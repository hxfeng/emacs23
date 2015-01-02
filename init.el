;;; Scott Kinney's 23 .emacs/init.el file
;; Thu Sep 19 19:34:14 PDT 2013
;; 
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Dockerfile-mode
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; redefine gud-step & gud-next
(global-set-key [f5] 'gud-step)
(global-set-key [f6] 'gud-next)

;;go mode
(require 'go-mode-load)
(add-hook 'before-save-hook 'gofmt-before-save)

;; minibuffer prompt font color
(set-face-foreground 'minibuffer-prompt "white")

;; no backup files ~
(setq make-backup-files nil)

;;(server-start)
;;(global-linum-mode 1)
(setq linum-format "%d ")
;;(require 'nlinum)
(line-number-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-confirm-unique-completion nil) ;; wait for RET, even for unique?
(show-paren-mode 1) ; turn on paren match highlighting

;; intdent size in c mode
(setq-default c-basic-offset 4)

;;; Compare windows
; sets keybinding
; 3 things are required
; - double-quotes
; - back-slash
; - single single-quote
(global-set-key "\C-cw" 'compare-windows)

;;; Keybinfing for `occur'
(global-set-key "\C-co" 'occur)

;; Unbind `C-x f'
(global-unset-key "\C-xf")

;; Rebind `C-x C-b' for `buffer-nemu'
; buffer menu will now appear in the same buffer window
(global-set-key "\C-x\C-b" 'buffer-menu)

;; default key to switch buffer is C-x b, but that's not easy enough
;;
;; when you do that, to kill emacs either close its frame from the window
;; manager or do M-x kill-emacs.  Don't need a nice shortcut for a once a
;; week (or day) action.
;; (global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
;;(global-set-key (kbd "C-x C-c") 'ido-switch-buffer)
(global-set-key (kbd "C-x B") 'ibuffer)

;;;; This snippet enables lua-mode
 ;; This line is not necessary, if lua-mode.el is already on your load-path
 ;;    (add-to-list 'load-path "~/.emacs.d/")  already defined
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; ERC Auto Query (new buffer when i get a priv messg)
(setq erc-auto-query 'buffer)
;; ERC Server
;;(erc :server "irc.oftc.net")
