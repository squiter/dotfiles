;;; init-simple-packages.el --- This file contains configurations for packages
;;; Commentary:
;;  When a package don't have enough configurations to have your own
;;  init-file I use this file
;;; Code:

;; Indent-guide
(indent-guide-global-mode)

;; back-button
(back-button-mode 1)

;; neotree
(global-set-key (kbd "C-c n") 'neotree-toggle)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; auto-package-update
(auto-package-update-maybe)

;; yagist
(setq yagist-github-token *user-github-token*)

(provide 'init-simple-packages)
;;; init-simple-packages.el ends here
