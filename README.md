# not-so-evil-mode
A minor mode for Emacs that only makes digits default to universal arguments but does is not modal like evil-mode

## Installation

``` emacs-lisp
(use-package not-so-evil-mode
    :straight (:type git :host github :repo "cmoxiv/not-so-evil-mode")
    :hook (display-line-numbers-mode . not-so-evil-mode))
```
