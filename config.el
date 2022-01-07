;;; editor/structural-editing/config.el -*- lexical-binding: t; -*-

(use-package! evil-cleverparens
  :when (featurep! :editor evil)
  :hook ((lisp-mode . evil-cleverparens-mode)
         (emacs-lisp-mode . evil-cleverparens-mode)
         (ielm-mode . evil-cleverparens-mode)
         (scheme-mode . evil-cleverparens-mode)
         (racket-mode . evil-cleverparens-mode)
         (hy-mode . evil-cleverparens-mode)
         (lfe-mode . evil-cleverparens-mode)
         (dune-mode . evil-cleverparens-mode)
         (clojure-mode . evil-cleverparens-mode)
         (fennel-mode . evil-cleverparens-mode))
  :config
  (after! cider
    (when (featurep! :editor evil +everywhere)
      (add-hook! cider-repl-mode-hook #'evil-cleverparens-mode)
      (add-hook! cider-repl-history-mode #'evil-cleverparens-mode))))

(use-package! paredit
  :unless (featurep! :editor lispy))

(after! paredit
  (use-package! paxedit
    :unless (featurep! :editor lispy)
    :hook ((lisp-mode . paxedit-mode)
           (emacs-lisp-mode . paxedit-mode)
           (ielm-mode . paxedit-mode)
           (scheme-mode . paxedit-mode)
           (racket-mode . paxedit-mode)
           (hy-mode . paxedit-mode)
           (lfe-mode . paxedit-mode)
           (dune-mode . paxedit-mode)
           (clojure-mode . paxedit-mode)
           (fennel-mode . paxedit-mode))
    :config
    (add-hook! eval-expression-minibuffer-setup-hook #'paxedit-mode)))
