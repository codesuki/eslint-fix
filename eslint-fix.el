;;; eslint-fix.el --- Fix JavaScript files using ESLint

;; Copyright (C) 2016 Neri Marschik
;; This package uses the MIT License.
;; See the LICENSE file.

;; Author: Neri Marschik <marschik_neri@cyberagent.co.jp>
;; Version: 1.0
;; Package-Requires: ()
;; Keywords: javascript, eslint, lint, formatting, style
;; URL: https://github.com/codesuki/eslint-fix

;;; Commentary:
;;
;; This file provides `eslint-fix', which fixes the current file using ESLint.
;;
;; Usage:
;;     M-x eslint-fix
;;
;;     To automatically format after saving:
;;     (Choose depending on your favorite mode.)
;;
;;     (eval-after-load 'js-mode
;;       '(add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))
;;
;;     (eval-after-load 'js2-mode
;;       '(add-hook 'js2-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))

;;; Code:

(defgroup eslint-fix nil
  "Fix ESLint errors automatically"
  :group 'convenience
  :prefix "eslint-fix")

(defcustom eslint-fix-eslint-bin (executable-find "eslint")
  "The path the ESLint executable"
  :type 'string)

(defun eslint-fix ()
  "Format the current file with ESLint."
  (interactive)
  (if eslint-fix-eslint-bin
      (progn (call-process eslint-fix-eslint-bin nil "*ESLint Errors*" nil "--fix" buffer-file-name)
             (revert-buffer t t t))
    (message "ESLint not found.")))

(provide 'eslint-fix)

;;; eslint-fix.el ends here
