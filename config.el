;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Bront" :size 18))
(setq doom-themes-enable-bold nil)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
;; (setq doom-theme 'doom-solarized-light)
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/library/Dropbox/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

(setq display-line-numbers-type 'relative)
(setq display-line-numbers-current-absolute nil)

(defun add-semicolon ()
  (interactive)
  (end-of-line)
  (when (not (looking-back ";"))
    (insert ";"))
  (evil-first-non-blank))

(def-package! winum :config (winum-mode))

(defun open-termite ()
  (interactive "@")
  (shell-command (concat "termite"
                         " > /dev/null 2>&1 & disown") nil nil))

(def-package! eyebrowse
  :defer 2
  :config (eyebrowse-mode t)
  ;(set-face-foreground 'eyebrowse-mode-line-active "medium turquoise")
  (set-face-foreground 'eyebrowse-mode-line-active "purple")
  (setq eyebrowse-mode-line-separator "|")
  (setq eyebrowse-new-workspace "*doom*"))

;; (def-package! smooth-scroll
;;   :config (smooth-scroll-mode 1))
(setq scroll-margin 5)
(setq scroll-conservatively most-positive-fixnum)

(defun my-change-number-at-point (change)
  (let ((number (number-at-point))
        (point (point)))
    (when number
      (progn
        (forward-word)
        (search-backward (number-to-string number))
        (replace-match (number-to-string (funcall change number)))
        (goto-char point)))))
(defun my-increment-number-at-point ()
  "Increment number at point like vim's C-a"
  (interactive)
  (my-change-number-at-point '1+))
(defun my-decrement-number-at-point ()
  "Decrement number at point like vim's C-x"
  (interactive)
  (my-change-number-at-point '1-))

(setq undo-tree-auto-save-history nil)
(setq +doom-dashboard-banner-file (expand-file-name "logo.png" doom-private-dir))

(global-visual-line-mode 1)

(after! magit
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)
  (setq magit-save-repository-buffers t))

(defun create-buffer(name)
  (interactive "sEnter name for new buffer: ")
  (switch-to-buffer
   (find-file (concat "/tmp/" name))))

(after! swiper
  (setq swiper-use-visual-line nil)
  (setq swiper-use-visual-line-p (lambda (a) nil)))

(put 'narrow-to-defun  'disabled nil)
(put 'narrow-to-page   'disabled nil)
(put 'narrow-to-region 'disabled nil)

(load! "+keybindings")
(load! "+org")
