;;; ~/.doom.d/+keybindings.el -*- lexical-binding: t; -*-
;; (map! [remap describe-bindings] #'embark-bindings
;;         "C-;"               #'embark-act  ; to be moved to :config default if accepted
;;         (:map minibuffer-local-map
;;          "C-;"               #'embark-act
;;          "C-c C-;"           #'embark-export
;;          "C-c C-s"           #'embark-collect-snapshot
;;          :desc "Export to writable buffer" "C-c C-e" #'+vertico/embark-export-write)
;;         (:leader
;;          :desc "Actions" "a" #'embark-act))

(map!
        (:map minibuffer-local-map
        (:leader
         :desc "apps" "a" nil)))


;; Leader bindings
(map! :leader
      (:n ":" #'doom/open-scratch-buffer)
      (:n "x" #'counsel-M-x)

      (:desc "prev buffer" :n "TAB" #'mode-line-other-buffer) ;; maybe evil-switch-to-window-last-buffer?!
      (:desc "go to char" :n "SPC" #'avy-goto-word-or-subword-1)
      ;; (:desc "go to char" :n "SPC" #'avy-goto-char-timer)
      (:desc "add ;" :n "RET" #'add-semicolon-at-eol)
      (:desc "swiper" :n "?" #'counsel-grep-or-swiper-backward)
      (:desc "swiper" :n "/" #'counsel-grep-or-swiper)
      (:desc "kill buffer" :n "d" #'kill-this-buffer)

      (:desc "apps" :prefix "a"
        :desc "ag" :n "a" #'ag
        :desc "dired" :n "d" #'dired
        :desc "eshell" :n "e" #'+eshell/toggle
        ;; :desc "toggle vterm" :n "e" #'+vterm/toggle
        ;; :desc "new vterm" :n "E" #'+vterm/here
        :desc "fzf" :n "f" #'counsel-fzf
        :desc "terminal" :n "t" #'open-terminal)

      (:desc "buffer" :prefix "b"
        ;; :desc "agenda buffer" :n "a" #'(lambda () (interactive) (switch-to-buffer "*Org Agenda*"))
        :desc "counsel boomarks" :n "j" #'counsel-bookmark
        :desc "list bookmarks" :n "l" #'list-bookmarks)


      (:desc "EMMS" :prefix "E"
        :desc "Open/start" :n "e" #'+emms-start-or-playlist
        :desc "Open/start" :n "E" #'+emms-start-or-playlist
        :desc "pause/resume" :n "SPC" #'emms-pause
        :desc "lower volume" :n "9" #'emms-volume-lower
        :desc "raise volume" :n "0" #'emms-volume-raise
        :desc "play marked dired files" :n "d" #'emms-play-dired
        :desc "prev track" :n "p" #'emms-previous
        :desc "next track" :n "n" #'emms-next
        :desc "random track" :n "r" #'emms-random
        :desc "shuffle" :n "s" #'emms-shuffle)

      (:desc "e" :prefix "e"
        :desc "next error" :n "n" #'flycheck-next-error
        :desc "prev error" :n "p" #'flycheck-previous-error
        :desc "termite" :n "t" #'open-termite)

      (:desc "+file" :prefix "f"
        :desc "find other window" :n "o" #'find-file-other-window
        :desc "toggle filetree" :n "t" #'dired-sidebar-toggle-sidebar
       )

      (:desc "git" :prefix "g"
        :desc "file diff" :n "d" #'magit-diff-buffer-file
        :desc "buffer log" :n "l" #'magit-log-buffer-file
        :desc "status" :n "s" #'magit-status)

      (:desc "harpoon" :prefix "h"
        :desc "add" :n "a" #'harpoon-add-file
        :desc "browse hydra" :n "h" #'harpoon-quick-menu-hydra
        :desc "harpoon 1" :n "1" #'harpoon-go-to-1
        :desc "harpoon 2" :n "2" #'harpoon-go-to-2
        :desc "harpoon 3" :n "3" #'harpoon-go-to-3
        :desc "harpoon 4" :n "4" #'harpoon-go-to-4
        :desc "harpoon 5" :n "5" #'harpoon-go-to-5
        :desc "harpoon 6" :n "6" #'harpoon-go-to-6
        :desc "harpoon 7" :n "7" #'harpoon-go-to-7
        :desc "harpoon 8" :n "8" #'harpoon-go-to-8
        :desc "harpoon 9" :n "9" #'harpoon-go-to-9
        )

      (:desc "insert" :prefix "i"
        :desc "org table" :n "t" #'org-table-create)

      (:desc "Project" :prefix "p"
        :desc "search in project" :n "/" #'+default/search-project
        :desc "search from current dir" :n "." #'+default/search-cwd
        :desc "find file" :n "p" #'projectile-find-file
        :desc "find file" :n "f" #'projectile-find-file
        :desc "switch project" :n "s" #'projectile-switch-project)

      (:desc "open" :prefix "o"
        :desc "agenda" :n "a" #'org-agenda-list
        "A" nil
        (:prefix ("A" . "org agenda")
          :desc "Agenda"         "a"  #'org-agenda
          :desc "Todo list"      "t"  #'org-todo-list
          :desc "Tags search"    "m"  #'org-tags-view
          :desc "View search"    "v"  #'org-search-view
          )
        :desc "agenda headings" :n "h" #'counsel-org-agenda-headlines
        :desc "search in digital garden" :n "o" #'(lambda() (interactive) (projectile-find-file-in-directory "~/dev/brain"))
        :desc "open config" :n "c" #'(lambda () (interactive) (find-file "~/.doom.d/config.el"))
        :desc "open books library" :n "b" #'open-books-library
        :desc "open library" :n "l" #'open-library
        :desc "open register" :n "r" #'counsel-register
        )

      (:desc "window" :prefix "w"
       :desc "add window config to register" :n "a" #'window-configuration-to-register
       :desc "maximize buffer" :n "m" #'doom/window-maximize-buffer)


      ;; (:desc "yank ring" :n "y" #'counsel-yank-pop)
      (:desc "yank ring" :n "y" #'browse-kill-ring)

      (:desc "z" :prefix "z"
        :desc "narrow" :n "n" #'narrow-to-region
        :desc "widen" :n "w" #'widen))

(after! winum
  (map! :leader
        (:desc "win 1" :n "1" #'winum-select-window-1)
        (:desc "win 2" :n "2" #'winum-select-window-2)
        (:desc "win 3" :n "3" #'winum-select-window-3)
        (:desc "win 4" :n "4" #'winum-select-window-4)
        (:desc "win 5" :n "5" #'winum-select-window-5)))

(after! org
  (map! :map org-mode-map
        :localleader
        :desc "archive subtree" :n "a" #'org-archive-subtree
        :desc "schedule" :n "s" #'org-schedule
        :desc "deadline" :n "d" #'org-deadline
        :desc "babel execute src" :n "b" #'org-babel-execute-src-block
        ;; :desc "toggle checkbox" :n "c" #'org-toggle-checkbox
        ;; (:desc "clock" :prefix "c"
        ;;  :desc "clock-in" :n "i" #'org-clock-in
        ;;  )
        :desc "todo" :n "t" #'org-insert-todo-heading
        :desc "link" :n "l" #'org-insert-link
        :desc "narrow" :n "n" #'org-narrow-to-subtree
        )
  )

(after! org-src
  (map! :map org-src-mode-map
        :localleader
        :desc "save source and exit" :n "'" #'org-edit-src-exit
        )
  )


;; Normal/visual mode bindings
(map! :nv "g[" #'git-gutter:previous-hunk)
(map! :nv "g]" #'git-gutter:next-hunk)
(map! :nv "C-c a" #'my-increment-number-at-point)
(map! :nv "C-c x" #'my-decrement-number-at-point)
(map! :nv "j" #'evil-next-visual-line)
(map! :nv "k" #'evil-previous-visual-line)
(map! :nv "gr" #'+lookup/references)
(map! :nvime "C-y" #'yank)
(map! :nvme "\\" #'evil-ex-nohighlight)
(map! :nvime "<f7>" #'+eshell/toggle)
;; TODO: bind F8 to compile/recompile
(map! :nvime "C-w" #'+workspace:delete)
(map! :nvime "M-TAB" #'+workspace/switch-to)
(map! :nvime "C-s" #'save-buffer)


;; z= -> (ispell-word &optional FOLLOWING QUIETLY CONTINUE REGION)

(map! :map c++-mode-map
      :nvime "<f3>" #'recompile
      )

(after! ess
(map! :map ess-mode-map
      :ni "<C-return>" #'ess-eval-region-or-line-and-step
      :n "TAB" #'outline-toggle-children
      :ni "<f3>" #'ess-eval-line-and-step
      )
(map! :map ess-r-mode-map
      :i "-" #'ess-insert-S-assign))

         ;; (define-key dashboard-mode-map  (kbd "0") 'lala)
         ;;
         (after! dashboard
(map! :map dashboard-mode-map
;; #'(lambda () (interactive) (find-file "~/.doom.d/config.el"))


      :n "0" #'(lambda () (interactive) (lala "0"))
      :n "1" #'(lambda () (interactive) (lala "1"))
      :n "2" #'(lambda () (interactive) (lala "2"))
      :n "3" #'(lambda () (interactive) (lala "3"))
      :n "4" #'(lambda () (interactive) (lala "4"))
      :n "5" #'(lambda () (interactive) (lala "5"))
      :n "7" #'(lambda () (interactive) (lala "6"))
      :n "7" #'(lambda () (interactive) (lala "7"))
      :n "8" #'(lambda () (interactive) (lala "8"))
      :n "9" #'(lambda () (interactive) (lala "9"))
      ))


(after! browse-kill-ring
  (map! :map browse-kill-ring-mode-map
        :e "<escape>" #'browse-kill-ring-quit
        :e "k" #'browse-kill-ring-previous
        :e "j" #'browse-kill-ring-forward
        :e "C-p" #'browse-kill-ring-previous
        :e "C-n" #'browse-kill-ring-forward
        :e "/" #'browse-kill-ring-occur
        ))
