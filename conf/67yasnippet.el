;; Hint: C-c & C-s yas-insert-snippet

(require 'yasnippet)

;; https://github.com/redguardtoo/emacs.d/blob/master/init-yasnippet.el
;; default TAB key is occupied by auto-complete
(global-set-key (kbd "C-c k") 'yas-expand)

(setq yas-snippet-dirs (list (expand-file-name "snippets"
                                               user-emacs-directory)))

(require 'dropdown-list)
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-ido-prompt
                             yas-completing-prompt
                             yas-no-prompt))

;; When I typed `(global-set`, and press [tab] to use `competion-at-point` to
;; complete `global-set-key`, in default YASnippet setting, it will expand `set`
;; first if define a snippet `set`.
;;   Refer to -> http://ergoemacs.org/emacs/emacs_tip_yasnippet_expand_whole_hyphenated_word.html
(setq yas-key-syntaxes '("w_" "w_." "w_.()" "^ "))

(setq yas-triggers-in-field t)

(yas-global-mode 1)

(defun yas-not-activate ()
  (memq major-mode '(term-mode)))
(setq-default yas-dont-activate (cons #'yas-not-activate yas-dont-activate))
