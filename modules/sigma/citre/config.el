;;; module/sigma/config.el -*- lexical-binding: t; -*-

(use-package! citre
  :defer t
  :init
    ;; This is needed in `:init' block for lazy load to work.
  (require 'citre-config)
  ;; Bind your frequently used commands.  Alternatively, you can define them
  ;; in `citre-mode-map' so you can only use them when `citre-mode' is enabled.
  ;;:bind (:map citre-mode-map
  ;;       ("C-]" . citre-jump)
  ;;       ("C-t" . citre-jump-back))
  :config
  (setq
   ;; Set these if readtags/ctags is not in your PATH.
   ;;citre-readtags-program "/path/to/readtags"
   ;;citre-ctags-program "/path/to/ctags"
   ;; Set these if gtags/global is not in your PATH (and you want to use the
   ;; global backend)
   ;;citre-gtags-program "/path/to/gtags"
   ;;citre-global-program "/path/to/global"
   ;; Set this if you use project management plugin like projectile.  It's
   ;; used for things like displaying paths relatively, see its docstring.
   citre-project-root-function #'projectile-project-root
   ;; Set this if you want to always use one location to create a tags file.
   citre-default-create-tags-file-location 'global-cache
   ;; See the "Create tags file" section above to know these options
   citre-use-project-root-when-creating-tags t
   citre-prompt-language-for-ctags-command t
   ;; By default, when you open any file, and a tags file can be found for it,
   ;; `citre-mode' is automatically enabled.  If you only want this to work for
   ;; certain modes (like `prog-mode'), set it like this.
   ;;citre-auto-enable-citre-mode-modes '(prog-mode))
   )
  (map! :desc "citre-jump" :n "C-]" #'citre-jump)
  (map! :desc "citre-back" :n "C-t" #'citre-jump-back)
  (map! :desc "citre-reference" :n "SPC ] d" #'citre-jump-to-reference)
  (map! :desc "citre-peek-reference" :n "SPC ] r" #'citre-peek-reference)
  (map! :desc "citre-peek" :n "SPC ] p" #'citre-peek)
  (map! :desc "citre-ace-peek" :n "SPC ] a" #'citre-ace-peek)
  (map! :desc "citre-update-databse" :n "<f12>" #'citre-global-update-database)
)
