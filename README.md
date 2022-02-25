# eslint-fix
Fix current file using `ESLint --fix`

## Usage
`M-x eslint-fix`

To automatically format after saving:

(Choose depending on your favorite mode.)

```
(add-hook 'js-mode-hook #'eslint-fix-auto-mode)

(add-hook 'js2-mode-hook #'eslint-fix-auto-mode)
```
