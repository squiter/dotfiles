(require 'smartparens)
(require 'smartparens-config)

(smartparens-global-mode t)

;; highlights matching pairs
(show-smartparens-global-mode t)

;; kill sexp
(define-key sp-keymap (kbd "C-M-k") 'sp-kill-hybrid-sexp)

;; navigation keybinds
(define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

;; Pipes are parens too :)
(sp-with-modes '(ruby-mode)
  (sp-local-pair "|" "|"))

(provide 'init-smartparens)