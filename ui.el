(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(menu-bar-mode -1)
(scroll-bar-mode -1)


(setq custom-theme-directory
      (expand-file-name "themes" user-emacs-directory))


(defun my-x-settings ()
  (tooltip-mode -1)
  
  (setq frame-title-format
        '("Emacs :: "
          (:eval (if buffer-file-name
                     (abbreviate-file-name buffer-file-name)
                   (buffer-name)))))
  
  (load-font-alist
   '("DejaVu Sans Mono-9" "Monospace-10")
   '("Hiragino Sans GB-10.5" "WenQuanYi Micro Hei-12" "Microsoft Yahei-12"))
  ;; (setq face-font-rescale-alist
  ;;       '(("Hiragino Sans GB"  . 1.3)
  ;;         ("WenQuanYi Zen Hei" . 1.2)))

  ;; (require-package 'zenburn-theme)
  ;; (load-theme 'zenburn t)
  ;; (load-theme 'atomtic t)
  (load-theme 'base16-monokai t)
  ;; (load-theme 'cofi-dark t)
  (set-frame-size (selected-frame) 111 41)
  )


(when window-system
  (my-x-settings))


(provide 'ui)
