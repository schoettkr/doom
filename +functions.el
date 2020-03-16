;;; ~/.doom.d/+functions.el -*- lexical-binding: t; -*-

(defun add-semicolon ()
  (interactive)
  (end-of-line)
  (when (not (looking-back ";"))
    (insert ";"))
  (evil-first-non-blank))

(defun open-termite ()
  (interactive "@")
  (shell-command (concat "termite"
                         " > /dev/null 2>&1 & disown") nil nil))

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

(defun create-buffer(name)
  (interactive "sEnter name for new buffer: ")
  (switch-to-buffer
   (find-file (concat "/tmp/" name))))