;; my evil
;; removed vim key

;; normal mode
;; y -> C-c
;; undo -> C-z
;; redo -> C-S-z
;; p -> C-v 
;; q -> visual mode exit
;; C-q -> macro
;; d -> scroll down
;; u -> scroll up
;; Enter -> zz 
;; vvvvv -> expand
;; p for project

;; number for move window
;; tab for alt window


;; insert mode



(require 'evil)
(require 'key-chord)
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
(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
;; magit
(evil-define-key '(normal motion visual) 'global (kbd "<leader>g") 'magit-dispatch-popup)
;;(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
;; code format
(evil-define-key '(normal motion visual) 'global (kbd "C-=") 'format-all-buffer)

;; use jk as cancel!!!
(key-chord-define evil-insert-state-map (kbd "jk") 'evil-normal-state)
(key-chord-define minibuffer-local-map (kbd "jk") 'minibuffer-keyboard-quit)
(key-chord-define ivy-minibuffer-map (kbd "jk") 'minibuffer-keyboard-quit)
(key-chord-define swiper-map (kbd "jk") 'minibuffer-keyboard-quit)

;; use C-c as cancel
(define-key minibuffer-local-map (kbd "C-c") 'minibuffer-keyboard-quit)
(define-key ivy-minibuffer-map (kbd "C-c") 'minibuffer-keyboard-quit)
(define-key swiper-map (kbd "C-c") 'minibuffer-keyboard-quit)
;;keymapping
(global-set-key (kbd "C-x C-r") 'reload-emacs)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-n") 'scroll-down-command)
(global-set-key (kbd "M-p") 'scroll-up-command)
