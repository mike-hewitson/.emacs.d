(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages
  '(starter-kit
    starter-kit-bindings
    starter-kit-lisp
    ;; Clojure & friends
    clojure-mode
    cider
    align-cljlet
    clj-refactor
    cider-eval-sexp-fu
    html-to-hiccup
    ;; Lisps
    rainbow-delimiters
    paxedit
    ;; Completion popup
    company
    popup
    ;; Project navigation
    projectile
    ag
    ;; Misc.
    markdown-mode
    color-theme-sanityinc-tomorrow
    powerline
    buffer-move
    color-identifiers-mode
    highlight
    git-link
    expand-region
    avy
    web-mode
    ;; Mikes
    command-log-mode
    ;; snippets
    yasnippet
    yasnippet-snippets
    clojure-snippets
    datomic-snippets

    ;;helm
    helm
    helm-projectile
    helm-cider
    helm-ag
    exec-path-from-shell
    helm-fuzzier
    helm-descbinds
    helm-swoop

    ;; some web stuff
    web-mode
    emmet-mode
    impatient-mode

    ;; flycheck
    flycheck-joker
    )
  "A list of packages to ensure are installed at launch.")

;; Automaticaly install any missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Load key bindings.
(load (concat user-emacs-directory "keybinds.el"))

(require 'flycheck-joker)
  (add-hook 'after-init-hook #'global-flycheck-mode)

(setq cider-font-lock-reader-conditionals nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:weight bold :foreground "#cc0000"))))
 '(idle-highlight ((t (:inherit region :background "maroon4")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#2d2d2d"))
 '(auto-save-default nil)
 '(backup-inhibited t t)
 '(beacon-color "#f2777a")
 '(blink-matching-paren nil)
 '(cider-buffer-name-show-port t)
 '(cljr-favor-prefix-notation nil)
 '(cljr-favor-private-functions nil)
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(delete-selection-mode t)
 '(fci-rule-color "#393939")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(git-link-open-in-browser t)
 '(nrepl-host "localhost")
 '(package-selected-packages
   (quote
    (flycheck-joker color-theme-sanityinc-solarized pcre2el impatient-mode emmet-mode web-mode cljr-helm helm-swoop dayone yasnippet-snippets command-log-mode exec-path-from-shell helm-cider-history helm-package helm-projectile helm-cider helm dracula-theme magit sublimity html-to-hiccup avy expand-region git-link color-identifiers-mode buffer-move powerline color-theme-sanityinc-tomorrow markdown-mode projectile popup company paxedit rainbow-delimiters cider-eval-sexp-fu clj-refactor align-cljlet cider clojure-snippets clojure-mode starter-kit-lisp starter-kit-bindings starter-kit)))
 '(projectile-use-git-grep t)
 '(safe-local-variable-values
   (quote
    ((cider-refresh-after-fn . "cognician.manage.dev-server/start-service!")
     (cider-refresh-before-fn . "cognician.manage.dev-server/stop-service!")
     (cider-refresh-after-fn . "cognician.builder2.dev-server/start-service!")
     (cider-refresh-before-fn . "cognician.builder2.dev-server/stop-service!")
     (cider-refresh-after-fn . "integrant.repl/resume")
     (cider-refresh-before-fn . "integrant.repl/suspend")
     (cider-cljs-lein-repl . "(do (dev) (go) (cljs-repl))")
     (cider-refresh-after-fn . "reloaded.repl/resume")
     (cider-refresh-before-fn . "reloaded.repl/suspend")
     (whitespace-line-column . 80)
     (lexical-binding . t))))
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f2777a")
     (40 . "#f99157")
     (60 . "#ffcc66")
     (80 . "#99cc99")
     (100 . "#66cccc")
     (120 . "#6699cc")
     (140 . "#cc99cc")
     (160 . "#f2777a")
     (180 . "#f99157")
     (200 . "#ffcc66")
     (220 . "#99cc99")
     (240 . "#66cccc")
     (260 . "#6699cc")
     (280 . "#cc99cc")
     (300 . "#f2777a")
     (320 . "#f99157")
     (340 . "#ffcc66")
     (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))

(split-window-right)

(menu-bar-mode t)

(yas-global-mode 1)

(global-company-mode)
(global-color-identifiers-mode)
(global-whitespace-mode)

(add-hook 'prog-mode-hook 'hs-minor-mode)

(add-hook 'clojure-mode-hook
          (lambda ()
            (clj-refactor-mode 1)
            (yas-minor-mode 1)
            (paxedit-mode)
            (cljr-add-keybindings-with-prefix "s-r")))

;; Add an extra newline to separate commit message from git commentary

(defun magit-commit-mode-init ()
  (when (looking-at "\n")
    (open-line 1)))

(add-hook 'git-commit-mode-hook 'magit-commit-mode-init)

(setq-default whitespace-line-column 90)

(require 'cider)
(setq cider-pprint-fn 'pprint)

(auto-save-mode t)

;; Save when out of focus
(defun save-all ()
  (interactive)
  (save-some-buffers t))

(add-hook 'focus-out-hook 'save-all)

(defvar cleanup-buffer t)

(defun toggle-fmt-on-clean ()
  (interactive)
  (if cleanup-buffer
      (setq cleanup-buffer nil)
    (setq cleanup-buffer t)))

(defun cleanup-buffer ()
  (when cleanup-buffer
    (interactive)
    (whitespace-cleanup)
    (untabify (point-min) (point-max))
    ;;(indent-region (point-min) (point-max))
    ))

(add-hook 'before-save-hook 'cleanup-buffer)

(eval-when-compile (require 'cl-lib))

;;; Turn on expression highlighting

(show-paren-mode 1)
(setq-default blink-matching-paren nil
              show-paren-style 'parenthesis
              show-paren-delay 0)

(require 'cl)
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  (flet ((process-list ())) ad-do-it))

(define-clojure-indent
  ;; compojure
  (context 'defun)
  (GET 'defun)
  (POST 'defun)
  ;; component
  (start 'defun)
  (stop 'defun)
  (init 'defun)
  (db 'defun)
  (conn 'defun)
  ;; datalog
  (and-join 'defun)
  (or-join 'defun)
  (not-join 'defun)
  ;; tufte
  (tufte/p 'defun))

(font-lock-add-keywords
 nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|REFACTOR\\|NOCOMMIT\\)"
        1 font-lock-warning-face t)))

;; General
(setq initial-scratch-message nil)
(when (locate-library "clojure-mode")
  (setq initial-major-mode 'clojure-mode))

(projectile-global-mode)
(setq projectile-show-paths-function 'projectile-hashify-with-relative-paths)

;; Visual
(load-theme 'tango-dark t)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)

(global-linum-mode t)
(setq linum-format "%3d ")

(setq-default tab-width 2)
(fset 'yes-or-no-p 'y-or-n-p)

(setq visible-bell nil)
(setq ring-bell-function #'ignore)

(require 'powerline)
(powerline-center-theme)

;; Clojure
(setq auto-mode-alist (cons '("\\.hiccup$" . clojure-mode) auto-mode-alist))

(require 'clojure-mode)
(setq clojure-align-forms-automatically t)

(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-to-list 'same-window-buffer-names "*cider")

(setq nrepl-buffer-name-show-port t)
(setq cider-save-file-on-load nil)

(require 'cider-eval-sexp-fu)

(load-library "hideshow")
(setq hs-hide-comments t)
(set-default-font "Input Mono Condensed 12")
;; Ido-mode customizations
                                        ; (setq ido-decorations
                                        ;       (quote
                                        ;        ("\n-> "           ; Opening bracket around prospect list
                                        ;         ""                ; Closing bracket around prospect list
                                        ;         "\n   "           ; separator between prospects
                                        ;         "\n   ..."        ; appears at end of truncated list of prospects
                                        ;         "["               ; opening bracket around common match string
                                        ;         "]"               ; closing bracket around common match string
                                        ;         " [No match]"     ; displayed when there is no match
                                        ;         " [Matched]"      ; displayed if there is a single match
                                        ;         " [Not readable]" ; current diretory is not readable
                                        ;         " [Too big]"      ; directory too big
                                        ;         " [Confirm]")))   ; confirm creation of new file or buffer

                                        ; (add-hook 'ido-setup-hook
                                        ;           (lambda ()
                                        ;             (define-key ido-completion-map [down] 'ido-next-match)
                                        ;             (define-key ido-completion-map [up] 'ido-prev-match)
                                        ;             (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
                                        ;             (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)))
(when (window-system)
  (set-frame-font "Fira Code"))
(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq mouse-wheel-progressive-speed nil)

(defun hs-clojure-hide-namespace-and-folds ()
; Hide the first (ns ...) expression in the file, and also all the (^:fold ...) expressions."
  (interactive)
  (hs-life-goes-on
   (save-excursion
     (goto-char (point-min))
     (when (ignore-errors (re-search-forward "^(ns "))
       (hs-hide-block))

     (while (ignore-errors (re-search-forward "\\^:fold"))
       (hs-hide-block)
       (next-line)))))

(defun hs-clojure-mode-hook ()
  (interactive)
  (hs-minor-mode 1)
  (hs-clojure-hide-namespace-and-folds))

(add-hook 'clojure-mode-hook 'hs-clojure-mode-hook)

(setq exec-path (append exec-path '("/usr/local/bin")))
(desktop-save-mode 1)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;Helm key settings
(helm-mode 1)
(helm-cider-mode 1)
(require 'helm-projectile)
(helm-projectile-on)

(require 'command-log-mode)
(add-hook 'LaTeX-mode-hook #'command-log-mode)

(require 'helm-descbinds)
(helm-descbinds-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))

;;
(add-to-list 'load-path "~/.emacs.d/impatient-mode")
(require 'impatient-mode)

(provide 'init)
;;; init.el ends here
