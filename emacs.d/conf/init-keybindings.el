(global-set-key (kbd "C-<return>") 'custom/insert-new-line)
(global-set-key (kbd "C-a") 'custom/smart-move-beginning-of-line)
(global-set-key (kbd "C-c d") 'custom/duplicate-current-line-or-region)
(global-set-key (kbd "C-c e") 'eval-buffer)
(global-set-key (kbd "C-x -") 'hsplit-last-buffer)
(global-set-key (kbd "C-x |") 'vsplit-last-buffer)
(global-set-key (kbd "C-x =") 'swap-buffers-in-windows)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)
(global-set-key (kbd "C-x C-r") 'rename-current-buffer-file)
(global-set-key (kbd "C-c /") 'custom/toggle-line-comment)
(global-set-key (kbd "C-h C-m") 'discover-my-major)

;; Custom Keybindings
(eval-after-load 'orgmode
  '(define-key (kbd "C-c C-o") 'org-agenda-open-link))

;; Browser ring
(global-set-key (kbd "s-V") 'helm-show-kill-ring)

(provide 'init-keybindings)
