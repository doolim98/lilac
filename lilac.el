;;package settings
(require 'package)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/lilac")
(load "lsp")
(load "pack")
(load "key")

(menu-bar-mode -1)
(setq-default cursor-type 'bar)
(setq show-paren-mode 'expression)
(setq show-paren-delay 0)

(show-paren-mode t)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(setq frame-resize-pixelwise t)
(setq ring-bell-function 'ignore)
(set-frame-size (selected-frame) 1600 900 t)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(set-default 'truncate-lines nil)
;; show number on prog-mode
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)
;;indent
(setq-default indent-tabs-mode nil)

;;(setq-default tab-width 4)
;;(setq c-default-style "linux" c-basic-offset 4)

;;(set-fringe-mode left-only) ; Space at edges
;;(fringe-mode "left-only")
(fringe-mode '(10 . 0))
;;(set-face-attribute 'default nil :font "DejaVuSansMono" :height 120)
(set-face-attribute 'default nil :font "Terminus (TTF)" :height 120)

;; Write backups to ~/.emacs.d/backup/
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      20 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old
(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/auto-save-list" t)))


;;(load-theme 'wheatgrass)


(defun reload-emacs()
  (interactive)
  (load-file "~/.emacs.d/init.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key projectile evil swiper ivy expand-region zenburn-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
