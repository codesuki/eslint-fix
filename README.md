# eslint-fix
Fix current file using `ESLint --fix --quiet`

## Usage
`M-x eslint-fix`

To automatically format after saving:

(Choose depending on your favorite mode.)

```
(eval-after-load 'js-mode
	   '(add-hook 'js-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))

(eval-after-load 'js2-mode
	   '(add-hook 'js2-mode-hook (lambda () (add-hook 'after-save-hook 'eslint-fix nil t))))
```
