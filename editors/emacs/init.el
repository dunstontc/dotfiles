;;
;;  oo          oo   dP               dP
;;                   88               88
;;  dP 88d888b. dP d8888P    .d8888b. 88
;;  88 88'  `88 88   88      88ooood8 88
;;  88 88    88 88   88   dP 88.      88
;;  dP dP    dP dP   dP   88 `88888P' dP
;;  =============================================================================


;; Launch a debugger with a stactrace if there's any error in Emacs lisp. This is especially helpful on
;; startup, when your init.el has an error.
(setq debug-on-error t)



;;
;; Color scheme
;;
(load-theme 'darkplus t)

;;
;; Package management
;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.melpa.org/packages/"))

