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

(use-package evil-commentary
  :ensure t
  :init
  (evil-commentary-mode)
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
  (setq x-select-enable-clipboard nil)
  (evil-mode)

  ;; always use evil mode
  (setq evil-emacs-state-modes nil)
  (setq evil-insert-state-modes nil)
  (setq evil-motion-state-modes nil)

  ;;(setq evil-default-state "emacs")
  ;;(setq evil-normal-state-modes (prog-mode))
  ;;(add-to-list evil-normal-state-modes 'prog-mode)
  ;;(evil-set-initial-state 'prog-mode 'normal)

  (setq evil-want-C-u-scroll t)
  ;;(evil-force-normal-state)
  )

(use-package key-chord
  :ensure t
  :init
  (key-chord-mode 1)
  )


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
