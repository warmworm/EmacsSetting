(deftheme gotham
  "Created 2015-10-15.")

(custom-theme-set-variables
 'gotham
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#cccccc" "#f2777a" "#99cc99" "#ffcc66" "#6699cc" "#cc99cc" "#66cccc" "#2d2d2d"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "ef0fa37f084e12ab30fdf09a5903d48c2bdadb094f413a40e9dbe84553dc3db8" "86f9973b9cfa5ce8c390b99c21c2c0e7cfb20075d3ec7386f1275799e77e2171" "0c49a9e22e333f260126e4a48539a7ad6e8209ddda13c0310c8811094295b3a3" "fcecf5757b909acbacc4fea2fa6a5fb9a63776be43cbff1dc0dffc9c02674478" "89336ca71dae5068c165d932418a368a394848c3b8881b2f96807405d8c6b5b6" "f0d8af755039aa25cd0792ace9002ba885fd14ac8e8807388ab00ec84c9497d7" "50ba38d439ebd0ebba0c44003b21e1cbb99c811017f75325b2df53145bfbf1cf" "ed8efa36b56a9cdf3de7fac30cc7aa42f78f68d2b813666dd7e3051129b88372" "7dad2be7d806486305d7d3afe6b53a0c882cf651e183ed1ffe6dfb0745dc80f6" "c7e8605c82b636fc489340e8276a3983745891e18e77440bbae305d1b5af9201" "7dd0db710296c4cec57c39068bfffa63861bf919fb6be1971012ca42346a417f" "c0dd5017b9f1928f1f337110c2da10a20f76da0a5b14bb1fec0f243c4eb224d4" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "326d008ee4558bbfcd17d07686647f2f42c74a4161aea72089b6a51fc9974dbc" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "e325373e71c25be18b6fee6b8ded8fd35bd9ffae65b449d779eae0afaaa1257c" "cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" "5ee12d8250b0952deefc88814cf0672327d7ee70b16344372db9460e9a0e3ffc" "f2d154645d78e5a527e7171ecdd22096f486620b07fda3c740d9b5cb8e29a0ce" "cee3ced547529a0923830318df23cb329255b963e39951d79fd7e56c54b0ade3" "ed4b75a4f5cf9b1cd14133e82ce727166a629f5a038ac8d91b062890bc0e2d1b" "0f63b94e366a6a9cd3ac12b3f5e7b88ba214fd592a99fb5bc55af33fb2280c7f" "ff9e6deb9cfc908381c1267f407b8830bcad6028231a5f736246b9fc65e92b44" "a12a28bf82f4634018f8d19f3d78fa34bd6c56dafe75db107852eb7b6a5a05b4" "52588047a0fe3727e3cd8a90e76d7f078c9bd62c0b246324e557dfa5112e0d0c" "7f1263c969f04a8e58f9441f4ba4d7fb1302243355cb9faecb55aec878a06ee9" "adbe7ba38c551281f21d760de0840cab0e1259964075a7e46cc2b9fdea4b82d6" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(package-selected-packages (quote (zenburn-theme zerodark-theme ubuntu-theme underwater-theme stekene-theme solarized-theme gruber-darker-theme reverse-theme quasi-monochrome-theme per-buffer-theme monokai-theme ir-black-theme helm-themes grandshell-theme gotham-theme darktooth-theme darcula-theme cyberpunk-theme colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized bongo birds-of-paradise-plus-theme anti-zenburn-theme alect-themes ahungry-theme clojure-quick-repls clojure-cheatsheet ztree smex rainbow-mode rainbow-identifiers rainbow-delimiters projectile paredit neotree imenu-anywhere idle-highlight-mode highlight-parentheses flx-ido clojure-test-mode clojure-mode-extra-font-locking auto-compile ag ac-cider))))

(custom-theme-set-faces
 'gotham
 '(button ((((type graphic)) :foreground "#245361" :box t) (((type tty)) :foreground "brightyellow" :box t)))
 '(shadow ((((type graphic)) :foreground "#245361") (((type tty)) :foreground "brightyellow")))
 '(highlight ((((type graphic)) :background "#091f2e") (((type tty)) :background "brightgreen")))
 '(link ((((type graphic)) :foreground "#d26937" :underline t) (((type tty)) :foreground "brightred" :underline t)))
 '(link-visited ((((type graphic)) :foreground "#edb443") (((type tty)) :foreground "yellow")))
 '(cursor ((((type graphic)) :background "#99d1ce") (((type tty)) :background "white")))
 '(region ((((type graphic)) :foreground unspecified :background "#0a3749") (((type tty)) :foreground unspecified :background "brightblue")))
 '(secondary-selection ((((type graphic)) :foreground unspecified :background "#4e5166") (((type tty)) :foreground unspecified :background "magenta")))
 '(linum ((((type graphic)) :foreground "#245361" :background "#11151c") (((type tty)) :foreground "brightyellow" :background "brightblack")))
 '(fringe ((((type graphic)) :foreground "#99d1ce" :background "#11151c") (((type tty)) :foreground "white" :background "brightblack")))
 '(vertical-border ((((type graphic)) :foreground "#245361") (((type tty)) :foreground "brightyellow")))
 '(tooltip ((((type graphic)) :foreground "#99d1ce" :background "#0c1014") (((type tty)) :foreground "white" :background "black")))
 '(trailing-whitespace ((((type graphic)) :background "#c23127") (((type tty)) :background "red")))
 '(escape-glyph ((((type graphic)) :foreground "#d26937" :weight bold) (((type tty)) :foreground "brightred" :weight bold)))
 '(font-lock-builtin-face ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(font-lock-comment-face ((((type graphic)) :foreground "#245361") (((type tty)) :foreground "brightyellow")))
 '(font-lock-comment-delimiter-face ((((type graphic)) :foreground "#245361") (((type tty)) :foreground "brightyellow")))
 '(font-lock-constant-face ((((type graphic)) :foreground "#33859e" :weight bold) (((type tty)) :foreground "cyan" :weight bold)))
 '(font-lock-doc-face ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(font-lock-function-name-face ((((type graphic)) :foreground "#599cab") (((type tty)) :foreground "brightcyan")))
 '(font-lock-keyword-face ((((type graphic)) :foreground "#195466" :weight bold) (((type tty)) :foreground "blue" :weight bold)))
 '(font-lock-negation-char-face ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(font-lock-preprocessor-face ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(font-lock-regexp-grouping-construct ((((type graphic)) :foreground "#edb443") (((type tty)) :foreground "yellow")))
 '(font-lock-regexp-grouping-backslash ((((type graphic)) :foreground "#edb443") (((type tty)) :foreground "yellow")))
 '(font-lock-string-face ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(font-lock-type-face ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(font-lock-variable-name-face ((((type graphic)) :foreground "#599cab") (((type tty)) :foreground "brightcyan")))
 '(font-lock-warning-face ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(error ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(success ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(warning ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(match ((((type graphic)) :background "#599cab") (((type tty)) :background "brightcyan")))
 '(isearch ((((type graphic)) :inverse-video t) (((type tty)) :inverse-video t)))
 '(isearch-fail ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(lazy-highlight ((((type graphic)) :foreground "#091f2e" :background "#edb443") (((type tty)) :foreground "brightgreen" :background "yellow")))
 '(minibuffer-prompt ((((type graphic)) :foreground "#33859e") (((type tty)) :foreground "cyan")))
 '(header-line ((((type graphic)) :foreground "#599cab" :background "#091f2e") (((type tty)) :foreground "brightcyan" :background "brightgreen")))
 '(menu ((((type graphic)) :background "#0a3749" :foreground "#99d1ce") (((type tty)) :background "brightblue" :foreground "white")))
 '(mode-line ((((type graphic)) :foreground "#599cab" :background "#091f2e" :box nil) (((type tty)) :foreground "brightcyan" :background "brightgreen" :box nil)))
 '(mode-line-inactive ((((type graphic)) :foreground "#245361" :background "#11151c" :box nil) (((type tty)) :foreground "brightyellow" :background "brightblack" :box nil)))
 '(mode-line-highlight ((((type graphic)) :foreground "#99d1ce") (((type tty)) :foreground "white")))
 '(mode-line-buffer-id ((((type graphic)) :weight bold) (((type tty)) :weight bold)))
 '(custom-button ((((type graphic)) :foreground "#245361" :box t) (((type tty)) :foreground "brightyellow" :box t)))
 '(custom-button-mouse ((((type graphic)) :foreground "#599cab" :box t) (((type tty)) :foreground "brightcyan" :box t)))
 '(custom-group-tag ((((type graphic)) :inherit fixed-pitch :foreground "#888ca6") (((type tty)) :inherit fixed-pitch :foreground "brightmagenta")))
 '(custom-state ((((type graphic)) :foreground "#33859e") (((type tty)) :foreground "cyan")))
 '(compilation-mode-line-fail ((((type graphic)) :foreground unspecified :inherit compilation-error) (((type tty)) :foreground unspecified :inherit compilation-error)))
 '(compilation-mode-line-exit ((((type graphic)) :foreground unspecified :inherit compilation-info) (((type tty)) :foreground unspecified :inherit compilation-info)))
 '(flymake-errline ((((type graphic)) :underline (:style wave :color "#c23127")) (((type tty)) :underline (:style wave :color "red"))))
 '(flymake-warnline ((((type graphic)) :underline (:style wave :color "#d26937")) (((type tty)) :underline (:style wave :color "brightred"))))
 '(outline-1 ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(outline-2 ((((type graphic)) :foreground "#33859e") (((type tty)) :foreground "cyan")))
 '(outline-3 ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(outline-4 ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(outline-5 ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(outline-6 ((((type graphic)) :foreground "#33859e") (((type tty)) :foreground "cyan")))
 '(outline-7 ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(outline-8 ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(show-paren-match ((((type graphic)) :foreground "#091f2e" :background "#d26937" :inverse-video nil) (((type tty)) :foreground "brightgreen" :background "brightred" :inverse-video nil)))
 '(show-paren-mismatch ((((type graphic)) :foreground "#091f2e" :background "#c23127" :inverse-video nil) (((type tty)) :foreground "brightgreen" :background "red" :inverse-video nil)))
 '(widget-button-pressed ((((type graphic)) :foreground "#c23127") (((type tty)) :foreground "red")))
 '(widget-documentation ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(widget-field ((((type graphic)) :background "#245361") (((type tty)) :background "brightyellow")))
 '(widget-single-line-field ((((type graphic)) :inherit widget-field) (((type tty)) :inherit widget-field)))
 '(ac-completion-face ((((type graphic)) :foreground "#d3ebe9" :background "#245361") (((type tty)) :foreground "brightwhite" :background "brightyellow")))
 '(org-agenda-dimmed-todo-face ((((type graphic)) :inherit shadow) (((type tty)) :inherit shadow)))
 '(org-agenda-done ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(org-agenda-restriction-lock ((((type graphic)) :inherit highlight) (((type tty)) :inherit highlight)))
 '(org-agenda-structure ((((type graphic)) :foreground "#599cab") (((type tty)) :foreground "brightcyan")))
 '(org-clock-overlay ((((type graphic)) :inherit secondary-selection) (((type tty)) :inherit secondary-selection)))
 '(org-column ((((type graphic)) :background "#091f2e") (((type tty)) :background "brightgreen")))
 '(org-column-title ((((type graphic)) :inherit org-column :underline t) (((type tty)) :inherit org-column :underline t)))
 '(org-date ((((type graphic)) :foreground "#33859e" :underline t) (((type tty)) :foreground "cyan" :underline t)))
 '(org-date-selected ((((type graphic)) :foreground "#091f2e" :background "#888ca6") (((type tty)) :foreground "brightgreen" :background "brightmagenta")))
 '(org-document-info ((((type graphic)) :foreground "#599cab") (((type tty)) :foreground "brightcyan")))
 '(org-document-title ((((type graphic)) :weight bold) (((type tty)) :weight bold)))
 '(org-done ((((type graphic)) :foreground "#2aa889" :weight bold) (((type tty)) :foreground "green" :weight bold)))
 '(org-drawer ((((type graphic)) :foreground "#599cab") (((type tty)) :foreground "brightcyan")))
 '(org-ellipsis ((((type graphic)) :inherit shadow :weight bold) (((type tty)) :inherit shadow :weight bold)))
 '(org-footnote ((((type graphic)) :foreground "#599cab" :underline t) (((type tty)) :foreground "brightcyan" :underline t)))
 '(org-formula ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(org-headline-done ((((type graphic)) :foreground "#edb443") (((type tty)) :foreground "yellow")))
 '(org-hide ((((type graphic)) :background "#0c1014") (((type tty)) :background "black")))
 '(org-latex-and-related ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(org-scheduled ((((type graphic)) :foreground "#2aa889") (((type tty)) :foreground "green")))
 '(org-scheduled-previously ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(org-scheduled-today ((((type graphic)) :inherit org-scheduled) (((type tty)) :inherit org-scheduled)))
 '(org-sexp-date ((((type graphic)) :foreground "#33859e") (((type tty)) :foreground "cyan")))
 '(org-table ((((type graphic)) :foreground "#4e5166") (((type tty)) :foreground "magenta")))
 '(org-time-grid ((((type graphic)) :foreground "#edb443") (((type tty)) :foreground "yellow")))
 '(org-todo ((((type graphic)) :foreground "#c23127" :weight bold) (((type tty)) :foreground "red" :weight bold)))
 '(org-upcoming-deadline ((((type graphic)) :foreground "#d26937") (((type tty)) :foreground "brightred")))
 '(popup-face ((((type graphic)) :foreground "#99d1ce" :background "#091f2e") (((type tty)) :foreground "white" :background "brightgreen")))
 '(popup-isearch-match ((((type graphic)) :foreground "#d3ebe9" :background "#245361") (((type tty)) :foreground "brightwhite" :background "brightyellow")))
 '(popup-menu-mouse-face ((((type graphic)) :foreground "#d3ebe9" :background "#245361") (((type tty)) :foreground "brightwhite" :background "brightyellow")))
 '(popup-menu-selection-face ((((type graphic)) :foreground "#d3ebe9" :background "#245361") (((type tty)) :foreground "brightwhite" :background "brightyellow")))
 '(popup-scroll-bar-background-face ((((type graphic)) :background "#091f2e") (((type tty)) :background "brightgreen")))
 '(popup-scroll-bar-foreground-face ((((type graphic)) :background "#245361") (((type tty)) :background "brightyellow")))
 '(popup-summary-face ((((type graphic)) :foreground "#245361" :background "#091f2e") (((type tty)) :foreground "brightyellow" :background "brightgreen")))
 '(popup-tip-face ((((type graphic)) :foreground "#d3ebe9" :background "#245361") (((type tty)) :foreground "brightwhite" :background "brightyellow")))
 '(default ((((type graphic)) :foreground "#99d1ce" :background "#0c1014") (((type tty)) :foreground "white" :background "black"))))

(provide-theme 'gotham)
