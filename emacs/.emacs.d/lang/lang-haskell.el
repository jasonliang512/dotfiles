;;; lang-haskell.el --- Language Support -*- lexical-binding: t; -*-

;;; Commentary:

;; Language support for Haskell

;;; Code:

(use-package haskell-mode
  :ensure t
  :mode "\\.hs\\'"
  :init (setq haskell-process-type 'stack-ghci)
  :general
  (:keymaps
   'haskell-mode-map
   "C-c C-f" 'lia/format-haskell-buffer))

(defun lia/format-haskell-buffer ()
  "Format the current Haskell buffer.
Brittany must be installed."
  (interactive)
  (let ((tmp-buf (generate-new-buffer "tmp-haskell-format"))
        (formatted (shell-command-to-string
                    (concat "brittany <<< "
                            (shell-quote-argument (buffer-string))))))
    (with-current-buffer tmp-buf (insert formatted))
    (replace-buffer-contents tmp-buf)
    (kill-buffer tmp-buf)))

(provide 'lang-haskell)

;;; lang-haskell.el ends here
