;; -*- no-byte-compile: t; -*-
;;; editor/structural-editing/packages.el

(when (modulep! :editor evil)
  (package! evil-cleverparens :pin "8c45879d49bfa6d4e414b6c1df700a4a51cbb869")

  (when (modulep! :editor lispy)
    (package! lispyville :disable t)))

(unless (modulep! :editor lispy)
  (when (package! paredit :pin "8330a41e8188fe18d3fa805bb9aa529f015318e8")
    (package! paxedit :pin "09f3d5aeb108937a801e77ef413e29eaa4ecc4be")))
