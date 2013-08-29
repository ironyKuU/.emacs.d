;; https://github.com/magnars/.emacs.d/blob/master/defuns/misc-defuns.el#L95
(defun sudo-edit (&optional arg)
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))


;; https://github.com/biern/.emacs.d/blob/master/conf-fullscreen.el#L1
(defun fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))


(defun term16-colors ()
  "Use ansi-term-color-vector to generate
Xresoures' 16-color."
  (let ((list (cdr (mapcar #'(lambda (face)
                               (cons (face-foreground face)
                                     (face-background face)))
                           ansi-term-color-vector))))
    (append (mapcar 'car list) (mapcar 'cdr list))))
