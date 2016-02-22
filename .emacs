;;C-h v to describe a variable.

;;(setq-default header-line-format mode-line-format) ; Copy mode-line
;;(setq-default mode-line-format nil) ; Remove mode-line

(set-frame-parameter nil 'internal-border-width 3)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq c-basic-offset 2)
(setq js-indent-level 2)

;;(setq-default show-trailing-whitespace t)
(setq-default fill-column 80)


(setq indent-line-function 'insert-tab)

;;Remove startup message.
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(electric-indent-mode -1)

;; Copy/pasted from http://melpa.org/#/getting-started
;; So I can install packages from MELPA.
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
;; M-x list-packages
;; Packages installed via package manager:
;; - auto-complete
;; - yasnippet
;; - js2-mode
;; - ac-js2

;; copy/pasted. not sure what a hook is.
;(add-hook 'js-mode-hook 'js2-minor-mode)
;(add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq js2-highlight-level 1)


;; yasnippet - make sure you load this before auto-complete to avoid tab collision.
;(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20141223.303/")
;(require 'yasnippet)
;(yas-global-mode 1)

;; auto-complete
;(require 'auto-complete)
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150116.1520/dict")
;(require 'auto-complete-config)
;(ac-config-default)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
;;(ac-set-trigger-key "TAB")
;;(ac-set-trigger-key "<tab>")

;;make .emacs.d visible
(add-to-list 'load-path "~/.emacs.d/")

;;move all annoying backup files to .saves
(setq backup-directory-alist `(("." . "~/.saves")))

;;makes accessing files easier
(require 'ido-vertical-mode)
(ido-mode t)
(ido-vertical-mode 1)

;;disable arrow keys / etc
(require 'guru-mode)
(guru-global-mode t)

;;disable C-x C-o
(global-unset-key (kbd "C-x C-o"))


;; (dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]  
;;              [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
;;              [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
;;              [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
;;              [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
;;   (global-unset-key k))



;;all this web stuff idk
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(global-set-key (kbd "C-TAB") 'comment-region)

;;(global-set-key (kbd "") ctl-x-map)
;;(global-set-key (kbd "C-,") ctl-x-map)
;;(global-set-key (kbd "C-,") 'move-beginning-of-line)

;;(global-set-key (kbd "<f2>") 'save-buffer)

;;(global-set-key (kbd "TAB") 'other-window)
;;(global-set-key (kbd "<f5>") 'ido-find-file)


;; C stuff
(setq c-default-style "linux" c-basic-offset 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
