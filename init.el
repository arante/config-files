(setq user-full-name "Billy Arante")
(setq user-email-address "arantebillywilson@gmail.com")

(require 'package)
(add-to-list 'package-archives
             '("melpa stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; No scroll, tool, and menu bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; No syntax highlighting
(global-font-lock-mode 0)

;; No word wrap
(set-default 'truncate-lines t)

;; Display relative line numbers
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(ido-mode t)
(setq ido-enable-flex-matching t
      ido-use-virtual-buffers t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (python-mode cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
