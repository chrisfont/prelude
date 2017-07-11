;;; prelude-ivy.el --- Emacs Prelude: ivy configuration
;;
;;; Commentary:

;;; Code:
(use-package swiper
  :demand
  :bind
  (("\C-s" . swiper)))

(use-package counsel
  :demand
  :config
  (use-package counsel-projectile
    :demand
    :bind
    (("M-x"     . counsel-M-x)
     ("C-x C-f" . counsel-find-file)
     ("<f1> f"  . counsel-describe-function)
     ("<f1> v"  . counsel-describe-variable)
     ("<f1> l"  . counsel-find-library)
     ("<f2> i"  . counsel-info-lookup-symbol)
     ("<f2> u"  . counsel-unicode-char)
     ("C-c g"   . counsel-git)
     ("C-c j"   . counsel-git-grep)
     ("C-c k"   . counsel-ag)
     ("C-x l"   . counsel-locate))
    :config))

;; Require Ivy
(use-package ivy
  :demand
  :bind
  (("C-c C-r" . ivy-resume))
  :config
  (setq ivy-use-virtual-buffers      t
        enable-recursive-minibuffers t
        ivy-count-format "%d/%d ")
  (ivy-mode 1))

(provide 'prelude-ivy)
;;; prelude-ivy.el ends here
