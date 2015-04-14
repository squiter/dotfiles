(require 'projectile)

(global-set-key (kbd "C-x f") 'helm-projectile)

(projectile-global-mode)

(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'helm-projectile)
(setq helm-projectile-sources-list '(helm-source-projectile-buffers-list
				     helm-source-projectile-files-list))

(provide 'init-projectile)