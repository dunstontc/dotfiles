;-*-Emacs-Lisp-*-
;;
;;  oo          oo   dP               dP
;;                   88               88
;;  dP 88d888b. dP d8888P    .d8888b. 88
;;  88 88'  `88 88   88      88ooood8 88
;;  88 88    88 88   88   dP 88.      88
;;  dP dP    dP dP   dP   88 `88888P' dP
;;  =============================================================================
;;
;;  So at this point, the majority of this code is from Phil Crosby's init.el
;;    (https://github.com/philc/emacs-config/blob/master/.emacs.d/init.el)
;;  & also Aaron Bieber's
;;    (https://github.com/aaronbieber/dotfiles/blob/master/configs/emacs.d/init.el)


;; Launch a debugger with a stactrace if there's any error in Emacs lisp. This is especially helpful on
;; startup, when your init.el has an error.
(setq debug-on-error t)

;;
;; Color scheme
;;
(load-theme 'darkplus t)

;; Don't litter my init file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; Setup package.el
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Use use-package now
; ...


;; =============================================================================
;; === Config ===
;; =============================================================================

;; Essential settings.
; (setq inhibit-splash-screen t
;       inhibit-startup-message t
;       inhibit-startup-echo-area-message t)
; (menu-bar-mode -1)
(tool-bar-mode -1)
