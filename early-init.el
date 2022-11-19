;; (setq package-check-signature nil)

;; gs for faster startup
(setq gc-cons-threshold #x40000000)


;;(setq user-emacs-directory (expand-file-name "~/.emacs.d/")
;;      package-user-dir (expand-file-name "packages" user-emacs-directory)
;;      url-history-file (expand-file-name "url/history" user-emacs-directory)
;;      custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (load custom-file :noerror)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Bootstrap 'use-package'

(require 'use-package)
; ensures that each package that is configured using ~use-package~ is installed
(setq use-package-always-ensure t) 


;; Prefer loading newest compiled .el file
(setq load-prefer-newer       noninteractive
     inhibit-startup-message t)

(set-window-scroll-bars (minibuffer-window) nil nil)
(set-default-coding-systems 'utf-8) ;; Set default coding system (especially for Windows)

(setq default-frame-alist
        '(
          (alpha 100 100)
          (cursor-type . 'vbar)
          (cursor-color . "#BE81F7")
          (font . "Consolas-13")
          (tool-bar-lines . 0)
          (vertical-scroll-bars . right)))

(blink-cursor-mode              1)
(column-number-mode             t)
(global-font-lock-mode          1)
(menu-bar-mode                  1)
(scroll-bar-mode                1)
(tool-bar-mode                  -1)
(tooltip-mode                   -1)
(put 'downcase-region 'disabled nil)
(put 'upcase-region   'disabled nil)
