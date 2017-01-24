
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "https://stable.melpa.org/packages/"))

(setq inhibit-startup-screen t)
(show-paren-mode t)
(setq show-paren-delay 0)
(global-set-key (kbd "C-c h") 'hl-line-mode)
(global-set-key (kbd "C-c e") 'hippie-expand)

(windmove-default-keybindings)

;; direx
(global-set-key (kbd "C-c d d") 'direx:jump-to-directory-other-window)
(global-set-key (kbd "C-c d p") 'direx-project:jump-to-project-root)

;; magit
(global-set-key (kbd "C-c g") 'magit-status)

;; org-mode
;;(add-hook 'org-mode-hook #'auto-fill-mode)
;;(add-hook 'org-mode-hook #'flyspell-mode)

;; coffee script
;;(setq coffee-tab-width 2)
;;(setq coffee-indent-tabs-mode nil)
;;(setq coffee-indent-like-python-mode t)


;; smex and ido
(ido-mode t)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


;; elpy
(elpy-enable)  
(setq elpy-rpc-backend "jedi")

(put 'narrow-to-region 'disabled nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (direx elpy magit smex company cider clj-refactor all))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
