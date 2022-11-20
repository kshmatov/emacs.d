;; init package system
(eval-when-compile
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  (setq gnutls-algorithm-priority  "NORMAL:-VERS-TLS1.3" ;; bug fix for gnu
        package-enable-at-startup nil
        package-archive-priorities '(("melpa"        . 200)
                                     ("elpa"         . 100)
                                     ("org"          . 75)
                                     ("nongnu"       . 65)
                                     ("gnu"          . 50)))  ;; Higher values are searched first.
;(setq package-check-signature nil) ;; for gnu repository
;  (package-initialize t)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (put 'use-package 'lisp-indent-function 1)
)
(add-to-list 'load-path (expand-file-name "recipes/" (file-name-directory load-file-name)))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dap-mode lsp-ui lsp-mode pip-requirements python-mode yasnippet-snippets yafolding yasnippet flycheck-golangci-lint go-tag go-mode company-prescient company use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'base-rcp) ; emacs default settings
(require 'theme-rcp)
(require 'company-rcp)
(require 'go-rcp)
(require 'yasnippet-rcp)
(require 'python-rcp)
(require 'lsp-rcp)
