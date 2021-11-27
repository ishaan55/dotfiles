;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Font Settings
(setq doom-font (font-spec :family "Cascadia Code" :size 15)
      doom-big-font (font-spec :family "Cascadia Code" :size 24))

;; Theme
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; (set-frame-parameter (selected-frame) 'alpha '(95 . 50))
;; (add-to-list 'default-frame-alist '(alpha . (95 . 50)))


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Ishaan Gupta"
      user-mail-address "ishaangupta2003@gmail.com")


;; ORG MODE

;; Hide markers in org mode
(setq org-hide-emphasis-markers t)

;; DIfferent font sizes for each header level
(custom-set-faces
  '(org-level-1 ((t (:inherit outline-1 :height 1.4))))
  '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
  '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
  '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
  '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
