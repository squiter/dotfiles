;;; init-bootstrap.el --- Bootstrap for my emacs configurations
;;
;; Copyright (C) 2015 Brunno dos Santos <emacs at brunno dot me>
;;
;; Author: Brunno dos Santos @squiter
;; URL: http://github.com/squiter/dotfiles
;;
;; This file is NOT part of GNU Emacs.
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; See <http://www.gnu.org/licenses/> for a copy of the GNU General
;; Public License.
;;
;;; Commentary:
;;
;; Thanks to http://github.com/rranelli/emacs-dotfile

;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "vendor" user-emacs-directory))

(defvar init-files
  '(init-secrets
    init-constants
    init-packages
    init-general
    init-custom-functions
    init-ui
    init-keybindings
    init-mac-switch-meta
    init-smerge
    init-dired
    init-highlight-symbol
    init-anzu
    init-sml
    init-helm
    init-swipe-helm
    init-magit
    init-projectile
    init-path
    init-rbenv
    init-ruby
    init-web-mode
    init-easy-kill
    init-company
    init-gitgutter
    init-shell
    init-eshell
    init-ido
    init-bindings
    init-smartparens
    init-org
    init-dash
    init-wakatime
    init-yaml
    init-guide-key
    init-flycheck
    init-restclient
    init-avy
    init-yasnippet
    init-twittering-mode
    init-haskell
    vkill
    init-erc))

(defun safe-require (feature)
  "Safely requires FEATURE."
  (condition-case ex
      (require feature)
    ('error (add-to-list 'rr/initialization-errors
			 (format "[ERROR LOADING \"%s\"]: %s" (symbol-name feature) ex)))))

(defun rr/safe-load-init-files ()
  "This function wrap the require method to capture error messages."
  (dolist (file init-files)
    (safe-require file)))

(defun rr/unsafe-load-init-files ()
  "This function only load the files with a require."
  (dolist (file init-files)
    (require file)))

(provide 'init-bootstrap)
;;; init-bootstrap.el ends here
