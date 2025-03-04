;; -*- mode: emacs-lisp -*-
;;  ____
;; / ___| _ __   __ _  ___ ___ _ __ ___   __ _  ___ ___
;; \___ \| '_ \ / _` |/ __/ _ \ '_ ` _ \ / _` |/ __/ __|
;;  ___) | |_) | (_| | (_|  __/ | | | | | (_| | (__\__ \
;; |____/| .__/ \__,_|\___\___|_| |_| |_|\__,_|\___|___/
;;       |_|
;;
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in v(setq-default dotspacemacs-configuration-layers
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ansible
     asm
     auto-completion
     better-defaults
     c-c++
     colors
     csv
     docker
     emacs-lisp
     emoji
     git
     go
     haskell
     helm
     html
     javascript
     json
     latex
     lsp
     major-modes
     markdown
     neotree
     nginx
     pdf
     puppet
     python
     ranger
     react
     ruby
     ruby-on-rails
     rust
     shell
     spell-checking
     sql
     syntax-checking
     systemd
     terraform
     theming
     tmux
     typescript
     version-control
     yaml
     (latex :variables latex-enable-folding t)
     (spell-checking :variables spell-checking-enable-auto-dictionary t)
     (markdown :variables markdown-live-preview-engine 'vmd)
     (colors :variables
             colors-enable-nyan-cat-progress-bar t
             colors-colorize-identifiers 'variables)
     (go :variables
         go-use-golangci-lint t
         go-linter 'golangci-lint
         godoc-at-point-function 'godoc-gogetdoc
         go-format-before-save t
         gofmt-command "goimports"
         go-backend 'lsp
         go-tab-width 2)
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t)
     (ranger :variables
             ranger-show-preview t))
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     aggressive-indent
     all-the-icons
     all-the-icons-dired
     all-the-icons-ivy
     beacon
     dumb-jump
     flycheck-golangci-lint
     git-messenger
     go-playground
     gotest
     highlight-indent-guides
     mode-icons
     prettier-js
     projectile
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 300
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(farmhouse-dark)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '(("FuraCode Nerd Font Mono"
                                :size 16
                                :weight medium
                                :width normal
                                :powerline-scale 1)
                               ("Fira Code Symbol"
                                :size 16
                                :weight normal
                                :width normal
                                :powerline-scale 1))
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "\ue231 andrea"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout t
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 5
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 95
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 85
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative nil
                                         :disabled-for-modes dired-mode
                                         pdf-view-mode
                                         :size-limit-kb 2000)
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
          (funcall (cdr my-pair)))))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them
in `dotspacemacs/user-config' first."
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-golangci-lint-setup))
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.jsx?\\'" . prettier-js-mode))))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; Changes to Spaceline
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (set-face-attribute 'spaceline-evil-emacs nil :background "#23cbfe" :foreground "#151515")
  (setq powerline-default-separator 'arrow)
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-window-number-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)

  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

  ;; Activate column indicator in prog-mode and text-mode
  (add-hook 'prog-mode-hook 'turn-on-fci-mode)
  (add-hook 'text-mode-hook 'turn-on-fci-mode)
  (setq fci-rule-color "#23cbfe")

  ;; Auto-load PDF when compiling LaTeX
  (add-hook 'doc-view-mode-hook 'auto-revert-mode)

  ;; Auto start rainbow delimeters in most programming modes
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

  ;; Auto start aggressive indent in most programming modes
  (add-hook 'prog-mode-hook #'aggressive-indent-mode)

  ;; Add some nice additions like italicized comments, etc.
  (set-face-attribute 'font-lock-comment-delimiter-face nil :slant 'italic)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-doc-face nil :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil :weight 'bold)
  (set-face-attribute 'font-lock-builtin-face nil :weight 'bold)
  (set-face-attribute 'font-lock-preprocessor-face nil :weight 'bold)

  ;; Use Source Code Pro Nerd Font patched for mode-line to display more icons
  (set-face-attribute 'mode-line nil :font "SauceCodePro Nerd Font Bold")

  ;; Start beacon mode to show a light when the cursor moves
  (beacon-mode t)
  (setq beacon-color "#23cbfe")
  (setq beacon-blink-when-point-moves-vertically 1)
  (setq beacon-blink-when-point-moves-horizontally 1)
  (setq beacon-blink-when-focused t)
  (setq beacon-blink-when-window-scrolls t)

  ;; Enable indent guide at startup
  (spacemacs/toggle-indent-guide-globally-on)
  (setq highlight-indent-guides-method 'character)

  ;; Visual line navigation for textual modes
  (spacemacs/toggle-visual-line-navigation-on)
  (setq truncate-lines t)
  (spacemacs/toggle-truncate-lines-on)
  (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)
  (add-hook 'prog-mode-hook 'spacemacs/toggle-visual-line-navigation-on)

  ;; JavaScript indent levels
  (setq javascript-indent-level 2)
  (setq js-indent-level 2)
  (setq js2-basic-offset 2)

  ;; Neo tree configuration
  (setq neo-theme 'icons)
  (setq mode-icons-change-mode-name t)
  (mode-icons-mode)

  ;; Add a new line to all visited and saved files
  (setq require-final-newline 'visit-save)

  ;; Fira Code Font Ligatures in Emacs/Spacemacs on (Arch) Linux thanks to:
  ;; https://www.rockyourcode.com/fira-code-font-ligatures-in-emacs-spacemacs-on-arch-linux
  (defun my-correct-symbol-bounds (pretty-alist)
    "Prepend a TAB character to each symbol in this alist,
  this way compose-region called by prettify-symbols-mode
  will use the correct width of the symbols
  instead of the width measured by char-width."
    (mapcar (lambda (el)
              (setcdr el (string ?\t (cdr el)))
              el)
            pretty-alist))
  (defun my-ligature-list (ligatures codepoint-start)
    "Create an alist of strings to replace with
  codepoints starting from codepoint-start."
    (let ((codepoints (-iterate '1+ codepoint-start (length ligatures))))
      (-zip-pair ligatures codepoints)))
  (setq my-fira-code-ligatures
        (let* ((ligs '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
                       "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
                       "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
                       "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
                       ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
                       "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
                       "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
                       "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
                       ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
                       "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
                       "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
                       "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
                       "x" ":" "+" "+" "*")))
          (my-correct-symbol-bounds (my-ligature-list ligs #Xe100))))
  (defun my-set-fira-code-ligatures ()
    "Add fira code ligatures for use with prettify-symbols-mode."
    (setq prettify-symbols-alist
          (append my-fira-code-ligatures prettify-symbols-alist))
    (prettify-symbols-mode))
  (add-hook 'prog-mode-hook 'my-set-fira-code-ligatures))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "PDF Tools")
     (output-html "xdg-open"))))
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-safe-themes
   (quote
    ("9108af90a0bd5c36b67973aea59a0f55ad7ae36c8bcc0d9145e91e5e290cac31" "a584e58e19f492cad36b361fc066da1e4d57fd360c77968edfabcdf77361126a" "e1c47ab9db37fccca2a2597b290d2aaac241967b8dcd73e02e244178cbd00c37" "823f4cfc17fccd45c42d1cd75214c73369bc5e3066bf4f9963c71aca36d94434" "6a13e8c06de875e6438445d0ff571d36a0de849e6a8b268c99ef771f907eea98" "cf45214bd141043f51c82bf4e340e72773ba2bf7cd1d1984de6d50e506d60cd5" "caf521e66311479f696ac7669692286c0ef6e102e4eaf4910462a52da4e54c39" "38132599432926fee460d42607fde769967ec814af16da3f406ac510306bff2e" "8b63fe87e15a2721eb208480bf0829b033ee568dd03bde040e4d53a1b2d071f9" "22a3a2a124792c635cef4e9b91eedcceccf5513de67a62b31ce96cc571e3d989" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (x86-lookup terraform-mode hcl-mode ranger neotree nasm-mode mode-icons jinja2-mode emoji-cheat-sheet-plus dockerfile-mode docker docker-tramp disaster company-emoji company-c-headers company-ansible cmake-mode clang-format auctex-latexmk ansible-doc ansible all-the-icons-ivy ivy all-the-icons-dired flycheck-golangci-lint tide typescript-mode prettier-js csv-mode toml-mode racer flycheck-rust cargo rust-mode lv spaceline-all-the-icons highlight-indent-guides transient turing-theme yasnippet-snippets company-quickhelp yapfify yaml-mode xterm-color web-mode web-beautify vmd-mode unfill tagedit smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rainbow-mode rainbow-identifiers pyvenv pytest pyenv-mode py-isort puppet-mode pug-mode projectile-rails rake inflections pip-requirements pdf-tools tablist origami orgit nginx-mode mwim multi-term mmm-mode minitest markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode simple-httpd live-py-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc intero hy-mode hlint-refactor hindent helm-pydoc helm-hoogle helm-gitignore helm-css-scss helm-company helm-c-yasnippet haskell-snippets haml-mode go-playground gotest go-guru go-eldoc gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-popup flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck-haskell flycheck-gometalinter flycheck feature-mode evil-magit magit magit-popup git-commit ghub treepy graphql with-editor eshell-z eshell-prompt-extras esh-help emmet-mode diff-hl cython-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode company-ghci company-ghc ghc haskell-mode company-cabal company-auctex company-anaconda company color-identifiers-mode coffee-mode cmm-mode chruby bundler inf-ruby beacon auto-yasnippet yasnippet auto-dictionary auctex anaconda-mode pythonic all-the-icons memoize ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((min-colors 16777216)) (:background "#282a36" :foreground "#f8f8f2")) (t (:background "#000000" :foreground "#f8f8f2")))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(TeX-view-program-selection
     (quote
      (((output-dvi has-no-display-manager)
        "dvi2tty")
       ((output-dvi style-pstricks)
        "dvips and gv")
       (output-dvi "xdvi")
       (output-pdf "PDF Tools")
       (output-html "xdg-open"))))
   '(ansi-color-names-vector
     ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
   '(custom-safe-themes
     (quote
      ("9108af90a0bd5c36b67973aea59a0f55ad7ae36c8bcc0d9145e91e5e290cac31" "a584e58e19f492cad36b361fc066da1e4d57fd360c77968edfabcdf77361126a" "e1c47ab9db37fccca2a2597b290d2aaac241967b8dcd73e02e244178cbd00c37" "823f4cfc17fccd45c42d1cd75214c73369bc5e3066bf4f9963c71aca36d94434" "6a13e8c06de875e6438445d0ff571d36a0de849e6a8b268c99ef771f907eea98" "cf45214bd141043f51c82bf4e340e72773ba2bf7cd1d1984de6d50e506d60cd5" "caf521e66311479f696ac7669692286c0ef6e102e4eaf4910462a52da4e54c39" "38132599432926fee460d42607fde769967ec814af16da3f406ac510306bff2e" "8b63fe87e15a2721eb208480bf0829b033ee568dd03bde040e4d53a1b2d071f9" "22a3a2a124792c635cef4e9b91eedcceccf5513de67a62b31ce96cc571e3d989" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" default)))
   '(evil-want-Y-yank-to-eol nil)
   '(linum-format " %d")
   '(package-selected-packages
     (quote
      (flymd flycheck-golangci-lint ruby-hash-syntax json-navigator helm-xref editorconfig doom-modeline eldoc-eval counsel-projectile counsel swiper ivy browse-at-remote window-purpose imenu-list visual-fill-column turing-theme yasnippet-snippets company-quickhelp yapfify yaml-mode xterm-color web-mode web-beautify vmd-mode unfill tagedit smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rainbow-mode rainbow-identifiers pyvenv pytest pyenv-mode py-isort puppet-mode pug-mode projectile-rails rake inflections pip-requirements pdf-tools tablist origami orgit nginx-mode mwim multi-term mmm-mode minitest markdown-toc markdown-mode magit-gitflow livid-mode skewer-mode simple-httpd live-py-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc intero hy-mode hlint-refactor hindent helm-pydoc helm-hoogle helm-gitignore helm-css-scss helm-company helm-c-yasnippet haskell-snippets haml-mode go-playground gotest go-guru go-eldoc gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-popup flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck-haskell flycheck-gometalinter flycheck feature-mode evil-magit magit magit-popup git-commit ghub treepy graphql with-editor eshell-z eshell-prompt-extras esh-help emmet-mode diff-hl cython-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode company-ghci company-ghc ghc haskell-mode company-cabal company-auctex company-anaconda company color-identifiers-mode coffee-mode cmm-mode chruby bundler inf-ruby beacon auto-yasnippet yasnippet auto-dictionary auctex anaconda-mode pythonic all-the-icons memoize ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((((min-colors 16777216)) (:background "#282a36" :foreground "#f8f8f2")) (t (:background "#000000" :foreground "#f8f8f2")))))
  )
