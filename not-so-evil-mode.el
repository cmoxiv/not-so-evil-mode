;; not-so-evil-mode.el --- A minimal minor mode -*- lexical-binding: t; -*-

;; Author: Your Name <your@email.com>
;; Version: 0.1
;; Keywords: convenience
;; Package-Requires: ((emacs "24.4"))
;; URL: https://example.com/not-so-evil-mode

;; Commentary:

;; `not-so-evil-mode' is a lightweight Emacs minor mode skeleton
;; inspired by modal editing but with a twist.

(defmacro not-so-evil-mode-initate (symbol digit)
  "TODO: Add docstring"
  (declare (indent 4))
  `(defun ,symbol ()
     ,(format "TODO: NOT-so-evil-mode initiation with %s" digit)
     (declare (indent 4))
     (interactive)
     (execute-kbd-macro (kbd ,(format "C-u %s" digit)))))

(defmacro not-so-evil-mode-insert (symbol digit)
  "TODO: Add docstring"
  (declare (indent 4))
  `(defun ,symbol ()
     ,(format "TODO: NOT-so-evil-mode insert digit %s" digit)
     (declare (indent 4))
     (interactive)
     (with-current-buffer (current-buffer)
       (insert ,(format "%d" digit)))))



(defvar not-so-evil-mode-map
  (let ((map (make-sparse-keymap)))
    ;; Define your custom keybindings here, e.g.:
    (define-key map (kbd "0-") (not-so-evil-mode-initate nsem-Cu- -))
    (define-key map (kbd "1") (not-so-evil-mode-initate nsem-Cu1 1))
    (define-key map (kbd "2") (not-so-evil-mode-initate nsem-Cu2 2))
    (define-key map (kbd "3") (not-so-evil-mode-initate nsem-Cu3 3))
    (define-key map (kbd "4") (not-so-evil-mode-initate nsem-Cu4 4))
    (define-key map (kbd "5") (not-so-evil-mode-initate nsem-Cu5 5))
    (define-key map (kbd "6") (not-so-evil-mode-initate nsem-Cu6 6))
    (define-key map (kbd "7") (not-so-evil-mode-initate nsem-Cu7 7))
    (define-key map (kbd "8") (not-so-evil-mode-initate nsem-Cu8 8))
    (define-key map (kbd "9") (not-so-evil-mode-initate nsem-Cu9 9))    
    (define-key map (kbd "M-0") (not-so-evil-mode-insert nsem-0 0))
    (define-key map (kbd "M-1") (not-so-evil-mode-insert nsem-1 1))
    (define-key map (kbd "M-2") (not-so-evil-mode-insert nsem-2 2))
    (define-key map (kbd "M-3") (not-so-evil-mode-insert nsem-3 3))
    (define-key map (kbd "M-4") (not-so-evil-mode-insert nsem-4 4))
    (define-key map (kbd "M-5") (not-so-evil-mode-insert nsem-5 5))
    (define-key map (kbd "M-6") (not-so-evil-mode-insert nsem-6 6))
    (define-key map (kbd "M-7") (not-so-evil-mode-insert nsem-7 7))
    (define-key map (kbd "M-8") (not-so-evil-mode-insert nsem-8 8))
    (define-key map (kbd "M-9") (not-so-evil-mode-insert nsem-9 9))    
    map)
  "Keymap for `not-so-evil-mode'.")

;;;###autoload
(define-minor-mode not-so-evil-mode
    "Toggle Not-So-Evil mode.
This mode aims to provide a modal editing experience—but less evil."
  :lighter " "
  :keymap not-so-evil-mode-map
  :global nil

  ;; Body: what happens when the mode is toggled
  (if not-so-evil-mode
      (message "Not-So-Evil Mode enabled.")
    (message "Not-So-Evil Mode disabled.")))

;;;###autoload
(defun not-so-evil-mode-enable ()
  "Enable `not-so-evil-mode'."
  (interactive)
  (not-so-evil-mode 1))

;;;###autoload
(defun not-so-evil-mode-disable ()
  "Disable `not-so-evil-mode'."
  (interactive)
  (not-so-evil-mode -1))

(provide 'not-so-evil-mode)



