;;; +misc/beautify-org-exp.el -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Check https://github.com/rougier/elegant-emacs/issues/4 for this ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-face-font 'default "Roboto Mono Light 14")

;; (set-frame-parameter (selected-frame)
;;                      'internal-border-width 24)
;; (setq default-frame-alist
;;       (append (list '(width  . 72) '(height . 40)
;;                     '(vertical-scroll-bars . nil)
;;                     '(internal-border-width . 24)
;;                     '(font . "Roboto Mono Light 14"))))


;; ;; Line spacing, can be 0 for code and 1 or 2 for text
;; (setq-default line-spacing 0)

;; ;; Underline line at descent position, not baseline position
;; (setq x-underline-at-descent-line t)

;; ;; No ugly button for checkboxes
;; (setq widget-image-enable nil)

;; ;; Line cursor and no blink
;; (set-default 'cursor-type  '(bar . 1))
;; (blink-cursor-mode 0)

;; ;; No sound
;; (setq visible-bell t)
;; (setq ring-bell-function 'ignore)

;; ;; Paren mode is part of the theme
;; (show-paren-mode t)

;; ;; this is a purposefully long line that I hope will show some things in the fringe
;; (fringe-mode '(0 . 0))
;; (defface fallback '((t :family "Fira Code Light"
;;                        :inherit 'face-faded)) "Fallback")
;; (set-display-table-slot standard-display-table 'truncation
;;                         (make-glyph-code ?… 'fallback))
;; (set-display-table-slot standard-display-table 'wrap
;;                         (make-glyph-code ?↩ 'fallback))

;; ;; simplified mode line
;; (defun mode-line-render (left right)
;;   (let* ((available-width (- (window-width) (length left) )))
;;     (format (format "%%s %%%ds" available-width) left right)))
;; (setq-default mode-line-format
;;      '((:eval
;;        (mode-line-render
;;        (format-mode-line (list
;;          (propertize "☰" 'face `(:inherit mode-line-buffer-id)
;;                          'help-echo "Mode(s) menu"
;;                          'mouse-face 'mode-line-highlight
;;                          'local-map   mode-line-major-mode-keymap)
;;          " %b "
;;          (if (and buffer-file-name (buffer-modified-p))
;;              (propertize "(modified)" 'face `(:inherit face-faded)))))
;;        (format-mode-line
;;         (propertize "%4l:%2c  " 'face `(:inherit face-faded)))))))

;; ;; move modeline to the top of the buffer
;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format'(""))

;; ;; Vertical window divider
;; (setq window-divider-default-right-width 3)
;; (setq window-divider-default-places 'right-only)
;; (window-divider-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Check https://lepisma.xyz/2017/10/28/ricing-org-mode/ for this ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;