;; -*- mode: lisp -*-

(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))

(require 'init-constants)
(require 'init-general)
(require 'init-custom-functions)
(require 'init-ui)
(require 'init-packages)
(require 'init-keybindings)

;; init my packages configurations
(require 'init-sml)
(require 'init-mac-switch-meta)
(require 'init-helm)
(require 'init-magit)
(require 'init-projectile)
(require 'init-path)
(require 'init-rbenv)
(require 'init-ruby)
(require 'init-web-mode)
(require 'init-easy-kill)
(require 'init-company)
(require 'init-gitgutter)
(require 'init-neotree)
(require 'init-shell)
(require 'init-eshell)
(require 'init-ido)
(require 'init-bindings)
(require 'init-smartparens)
(require 'init-expand-region)
(require 'init-org)
(require 'init-dash)
(require 'init-auto-package-update)
(require 'init-wakatime)
(require 'init-yaml)
(require 'init-guide-key)
(require 'init-flycheck)
(require 'init-restclient)
(require 'init-avy)
(require 'init-yasnippet)
