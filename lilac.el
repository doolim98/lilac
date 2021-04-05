;;package settings
(require 'package)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/lilac")
(load "lsp")

(use-package format-all
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'format-all-mode)
  )

(use-package tramp
  :ensure t
  :init
  (setq tramp-default-method "ssh")
  )

(use-package magit
  :ensure t
  :init
  )

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  (setq projectile-sort-order 'recently-active)
  (setq projectile-enable-caching nil)
  (setq projectile-file-exists-remote-cache-expire nil)
  )

(use-package zenburn-theme
  :ensure t
  :init
  (load-theme 'zenburn t))

(use-package expand-region
  :ensure t
  :init
  )

(use-package popwin
  :ensure t
  :init
  (popwin-mode 1)
  )

(use-package ivy
  :ensure t
  :init
  (ivy-mode)
  )

(use-package swiper
  :ensure t
  :init
  (global-set-key (kbd "C-s") 'swiper-isearch)
  )

(use-package general
  :ensure t
  :init
  ;;(general-override-mode)
  )

(use-package evil
  :ensure t
  ;;:disabled
  :init
  (evil-mode)

  ;; always sue evil mode
  (setq evil-emacs-state-modes nil)
  (setq evil-insert-state-modes nil)
  (setq evil-motion-state-modes nil)

  (setq evil-want-C-u-scroll t)
  (evil-force-normal-state)
  ;;(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
  (evil-define-key '(normal motion visual) 'global (kbd "C-u") 'evil-scroll-up)
  ;; C-g as escape key (same as quit key in emacs)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-visual-state-map (kbd "C-g") 'evil-normal-state)
  ;; C-c as normal state
  ;;(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
  ;;(define-key evil-normal-state-map (kbd "C-c") 'evil-normal-state)
  ;;(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
  (evil-define-key '(insert normal motion visual) 'global (kbd "C-c") 'evil-normal-state)
  ;; scroll
  ;;(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
  (evil-define-key '(normal motion visual) 'global (kbd "C-u") 'evil-scroll-up)
  ;; : as M-x -> dont use vim commands
  ;;(define-key evil-normal-state-map (kbd ":") 'execute-extended-command)
  (evil-define-key '(normal motion visual) 'global (kbd ":") 'execute-extended-command)
  ;; use swiper for search
  (evil-define-key '(normal motion visual) 'global (kbd "/") 'swiper-isearch)
  ;;(define-key evil-normal-state-map (kbd "/") 'swiper-isearch)
  ;; leader key
  (evil-set-leader '(normal motion visual) " ")
  ;;(define-key evil-motion-state-map " " nil)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>fs") 'save-buffer)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>ff") 'find-file)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>xr") 'reload-emacs)
  ;; window
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>ww") 'evil-window-prev)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wh") 'evil-window-left)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wj") 'evil-window-down)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wk") 'evil-window-up)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wl") 'evil-window-right)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wq") 'evil-window-delete)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>wv") 'evil-window-vsplit)
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>ws") 'evil-window-split)
  ;; help
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>hl") 'view-lossage)
  ;; projectile
  (evil-define-key '(normal motion visual) 'projectile-mode-map (kbd "<leader>p") 'projectile-command-map)
  ;; magit
  (evil-define-key '(normal motion visual) 'global (kbd "<leader>g") 'magit-dispatch-popup)
  ;;(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
  ;; code format
  (evil-define-key '(normal motion visual) 'global (kbd "C-=") 'format-all-buffer)
  )

(use-package key-chord
  :ensure t
  :init
  (key-chord-mode 1)
  ;; use jk as cancel!!!
  (key-chord-define evil-insert-state-map (kbd "jk") 'evil-normal-state)
  (key-chord-define minibuffer-local-map (kbd "jk") 'minibuffer-keyboard-quit)
  (key-chord-define ivy-minibuffer-map (kbd "jk") 'minibuffer-keyboard-quit)
  (key-chord-define swiper-map (kbd "jk") 'minibuffer-keyboard-quit)
  )

;; use C-c as cancel
(define-key minibuffer-local-map (kbd "C-c") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "C-c") 'minibuffer-keyboard-quit)
(define-key swiper-map (kbd "C-c") 'minibuffer-keyboard-quit)

(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  ;; Allow C-h to trigger which-key before it is done automatically
  (setq which-key-show-early-on-C-h t)
  ;; make sure which-key doesn't show normally but refreshes quickly after it is
  ;; triggered.
  (setq which-key-idle-delay 10000)
  (setq which-key-idle-secondary-delay 0.05)
  (which-key-mode)
  )



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
;;indent
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-default-style "linux"
      c-basic-offset 4)
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

;;keymapping
(global-set-key (kbd "C-x C-r") 'reload-emacs)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-n") 'scroll-down-command)
(global-set-key (kbd "M-p") 'scroll-up-command)
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
