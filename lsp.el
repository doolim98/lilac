(use-package lsp-mode
  :ensure t
  :init
  (add-hook 'c-mode-hook 'lsp)
  (add-hook 'c++-mode-hook 'lsp)
  )

(use-package flycheck
  :ensure t
  :init
  (add-hook 'after-init-hook #'global-flycheck-mode)
  )

(use-package lsp-ui
  :ensure t
  ;;:disabled t
  :init
  (setq lsp-ui-doc-show-with-cursor nil)
  )

(use-package lsp-ivy
  :ensure t
  :init
  )

(use-package company
  :ensure t
  :init
  (setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast
  )
