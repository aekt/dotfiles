(use-package csharp-mode
  :defer 0
  :hook
  (before-save . eglot-format-buffer)
  :straight t)

(use-package elixir-mode
  :defer 0
  :straight t)

(use-package geiser
  :defer 0
  :straight t)

(use-package go-mode
  :defer 0
  :straight t)

(use-package haskell-mode
  :defer 0
  :straight t)

(use-package json-mode
  :defer 0
  :straight t)

(use-package markdown-mode
  :defer 0
  :straight t)

(use-package nix-mode
  :defer 0
  :straight t)

(use-package rust-mode
  :defer 0
  :straight t)

(use-package slime
  :defer 0
  :init
  (setq inferior-lisp-program "sbcl")
  :straight t)

(use-package typescript-mode
  :defer 0
  :mode ("\\.tsx\\'")
  :straight t)
