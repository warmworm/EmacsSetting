;; clojure-mode
(add-hook 'clojure-mode-hok #'enable-paredit-mode)
(setq clojure-defun-style-default-indent t)

;; cider
(setq cider-auto-select-error-buffer nil)
(setq cider-prompt-save-file-on-load nil)
(add-hook 'cider-mode-hook #'eldoc-mode)

;; ac-cider
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
	 (add-to-list 'ac-modes 'cider-mode)
	 (add-to-list 'ac-modes 'cider-repl-mode)))

;; rainbow-delimiters
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'highlight-parentheses-mode)

(eval-after-load 'flycheck '(flycheck-clojue-setup))
;;(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-message))

;;(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  ;(clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-v"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
