(eval-when-compile (require 'use-package))
(use-package emacs
  :demand t
  :config
  (cl-loop
   for from across "йцукенгшщзхїфівапролджєячсмитьбюЙЦУКЕНГШЩЗХЇФІВАПРОЛДЖ\ЄЯЧСМИТЬБЮ№"
   for to   across "qwertyuiop[]asdfghjkl;'zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>#"
   do
   (eval `(define-key local-function-key-map
            (kbd ,(concat "C-"
                          (string from)))
            (kbd ,(concat "C-"
                          (string to)))))
   (eval `(define-key local-function-key-map
            (kbd ,(concat "M-"
                          (string from)))
            (kbd ,(concat "M-"
                          (string to)))))
   (eval `(define-key local-function-key-map
            (kbd ,(string from))
            (kbd ,(string to)))))
  (defalias 'yes-or-no-p     'y-or-n-p)
  (with-current-buffer "*scratch*"
    (emacs-lock-mode 'kill))
  :custom
  (ad-redefinition-action       'accept)
  (bidi-display-reordering      nil "Never reorder bidirectional text for display in the visual order.")
  (bidi-paragraph-direction     'left-to-right)
  (c-basic-offset               2)
  (column-number-mode 1)
  (completion-cycle-threshold   3)
  (display-time-24hr-format     t)
  (display-time-default-load-average nil)
  (display-time-mode            t)
  (enable-recursive-minibuffers t)
  (file-name-shadow-properties     '(invisible t intangible t face file-name-shadow field shadow)
                                   "Removing minibuffer 'default directory' prefix.")
  (file-name-shadow-tty-properties '(invisible t intangible t before-string "{" after-string "} " field shadow)
                                   "Removing minibuffer 'default directory' prefix in tty.")
  (frame-title-format              '((buffer-file-name "%f [%*] %I %P %l" "%b [%*] %I %P %l"))
                                   "Display the name of the current buffer in the title bar")
  (global-hl-line-mode t)
  (indent-line-function         'insert-tab "End Indent settings")
  (indent-tabs-mode             nil)
  (initial-scratch-message      "")
  (java-basic-offset            2)
  (js-indent-level              2)
  (lisp-body-indent             2)
  (make-backup-files nil)
  (max-mini-window-height       0.5)
  (minibuffer-prompt-properties '(read-only t cursor-intangible t face minibuffer-prompt))
  (next-line-add-newlines     nil)
  (nxml-attribute-indent      2)
  (ring-bell-function         'ignore)
  (resize-mini-windows        t)
  (scroll-conservatively      10000)
  (scroll-margin              10)
  (scroll-step                1 "Scrolling settings")
  (size-indication-mode       t)
  (sentence-end-double-space  nil)
  (show-paren-mode            1)
  (split-height-threshold     nil "Minimum height for splitting windows vertically.")
  (split-width-threshold      0   "Minimum height for splitting windows horizontally.")
  (standart-indent            2)
  (tab-always-indent          nil)
  (tab-width                  2)
  (use-dialog-box             nil "Non-nil means mouse commands use dialog boxes to ask questions.")
  ;; (uniquify-buffer-name-style 'reverse)
  ;; (uniquify-min-dir-content   3)
  :bind
 ; ("M-i" . previous-line)
 ; ("M-j" . backward-char)
 ; ("M-k" . next-line)
 ; ("C-c k" . kill-sentence)
 ; ("M-l" . forward-char)
 ; ("C-c l" . downcase-word)
 ; ("M-o" . forward-word)
 ; ("M-u" . backward-word)
 ; ("C-c u" . upcase-word)
 ; ("C-v" . yank)
 ; ("C-y" . scroll-up-command)
  ("RET" . newline)
  ("M-RET" . newline-and-indent)
  ("C-c b" . (lambda()
               (interactive)
               (revert-buffer t t)))
 ; ("C-x a s" . sort-lines)
  ("C-x a d" . delete-trailing-whitespace)
  ;; keybindings from functions_my.el file
 ; ([M-S-up] . vd/move-line-up)
 ; ([M-S-down] . vd/move-line-down)
 ; ("C-x C-d" . vd/duplicate-line)
  ("C-x b" . ibuffer)
  ("C-x C-b" . ibuffer)
 ; ("C-c C-k" . vd/copy-line)
 ; ("C-c C-w" . vd/copy-word)
 ; ("C-d" . vd/delete-line)
 ; ("C-o" . vd/open-next-line)
 ; ("C-x C-x" . vd/kill-emacs-with-save)
 ; ("C-c o" . vd/open-previous-line)
  :hook
  (minibuffer-setup . cursor-intangible-mode)
 ; (prog-mode . vd/highlight-todos)
)

(use-package f
  :ensure t
)

(provide 'base-rcp)
