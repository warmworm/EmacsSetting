; ----------------------------------------------------------------------
; 설정 파일 정보
; ----------------------------------------------------------------------

; * 설정 파일의 위치(.emacs .emacs.el)
;   - Windows 7 : "C:\Users\계정이름\AppData\Roaming\"
;   - Windows XP : "C:\Documents and Settings\계정이름\Application Data\"
;   - 환경변수 'HOME'을 설정하면 홈 디렉토리를 변경할 수 있다.

; ----------------------------------------------------------------------
; 로딩 경로 추가
; ----------------------------------------------------------------------

(setq load-path (nconc '("~/.emacs.d/system") load-path))

; ----------------------------------------------------------------------
; test
; ----------------------------------------------------------------------

;; 박스형 커서 대신 세로선 커서 사용
;(custom-set-variables '(cursor-type 'bar))

; ----------------------------------------------------------------------
; 파일 인코딩 자동 판별 모듈 로딩
; ----------------------------------------------------------------------

(require 'unicad)

; ----------------------------------------------------------------------
; printer
; ----------------------------------------------------------------------

(defun setup-printer ()
  (setenv "GS_LIB" "C:/Program Files/gs/gs9.06/lib;C:/Program Files/gs/gs9.06/fonts")
  (setq ps-lpr-command "C:/Program Files/gs/gs9.06/bin/gswin64c.exe")
  (setq ps-lpr-switches '("-q" "-dNOPAUSE" "-dBATCH" "-sDEVICE=mswinpr2" "-sFONTDIR=C:/Windows/Fonts" "-sCIDFMAP=cidfmap mkcidfm.ps"))
  (setq ps-printer-name t)
  (setq ps-multibyte-buffer 'non-latin-printer)

  (setenv "PRINTER" "PDFCreator")
  (cond ((eq system-type 'windows-nt)
		 (setq ps-printer-name "PDFCreator")
		 (setq ps-printer-name-option "-d")
		 (setq ps-lpr-command "c:/cygwin/bin/lpr.exe"))))

; ----------------------------------------------------------------------
; 색상 테마
; ----------------------------------------------------------------------

(defun setup-custom-theme ()
  (require 'w-theme)
  ;(w-color-blue) ; 회색 테마 적용
  (w-color-gray))

; ----------------------------------------------------------------------
; 창
; ----------------------------------------------------------------------

(defun setup-window (x y w h)
  ; 툴바 안보이게 설정
  ;(tool-bar-mode -1)

  ; 창 위치 설정
  (set-frame-position (selected-frame) x y)

  ; 창 크기 설정 (emacs -g 80x40 or)
  (setq initial-frame-alist '((width . w) (height . h))) ; 첫번째 프레임 크기
  (setq default-frame-alist '((width . w) (height . h))) ; 그 다음 프레임 크기(C-x 5 2 등으로 새로 생성한 프레임 크기)

  ; 바탕색 투명하게 만들기(85=활성창 알파값, 50=비활성창 알파값)
  ;(set-frame-parameter (selected-frame) 'alpha '(95 75))
  ;(add-to-list 'default-frame-alist '(alpha 95 75))

  ; 'Meta+방향키'로 창 이동
  (windmove-default-keybindings 'meta))

; 창의 투명도 변경하기
;    * 사용법: M-x transparency
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))

; ----------------------------------------------------------------------
; 화면 표시
; ----------------------------------------------------------------------

(setq-default line-spacing 3) ; 기본 줄 간격 설정
(setq inhibit-splash-screen t) ; 초기 화면을 보여주지 않는다.
(global-linum-mode t) ; 줄번호 표시
;(setq column-number-mode t) ; 커서의 컬럼 위치 표시(t=yes, nil=no)
(setq transient-mark-mode t) ; 선택된 영역이 다른 부분과 구분되게 할지의 여부 설정(t=yes, nil=no)
(setq search-highlight t) ; 검색시 찾은 문자열 표시 여부 설정(t=yes, nil=no)
(setq query-replace-highlight t) ; 치환시 찾은 문자열 표시 여부 설정(t=yes, nil=no)

; ----------------------------------------------------------------------
; 괄호
; ----------------------------------------------------------------------

; 닫는 괄호 입력시 대응되는 여는 괄호에 커서가 머무르는 시간 지정(초 단위)
(setq blink-matching-delay 0.1)

;;; vim 처럼 % 사용해서 {} () 괄호 짝의 이동하기
;;(define-key global-map (kbd "%") 'match-paren)
;;(defun match-paren ()
;;  "% command of vi"
;;  (interactive)
;;  (let ((char (char-after (point))))
;;    (cond ((memq char '(?\( ?\{ ?\[))
;;           (forward-sexp 1)
;;           (backward-char 1))
;;          ((memq char '(?\) ?\} ?\]))
;;           (forward-char 1)
;;           (backward-sexp 1))
;;          (t (call-interactively 'self-insert-command)))))

; ----------------------------------------------------------------------
; 파일
; ----------------------------------------------------------------------

; 백업 파일
(setq auto-save-default nil) ; 자동 저장 여부 설정(t=yes, nil=no)
(setq make-backup-files nil) ; 백업 파일 만들지 여부 설정(t=yes, nil=no)

; ----------------------------------------------------------------------
; 이동
; ----------------------------------------------------------------------

(setq next-line-add-newlines nil) ; 문서 맨 아래에서 down 키눌렀을 때 새 줄을 추가할지의 여부(t=yes, nil=no)

; ----------------------------------------------------------------------
; 기본 탭 설정
; ----------------------------------------------------------------------

(setq-default tab-width 4) ; 기본 탭 크기
(setq-default indent-tabs-mode t) ; 들여쓰기시 탭 문자 사용 여부(t=탭문자 사용, nil=공백 문자 사용)

; ----------------------------------------------------------------------
; 기본 모드
; ----------------------------------------------------------------------

; 텍스트 모드를 기본 모드로 설정
;(setq default-major-mode 'text-mode)
;(setq initial-major-mode 'text-mode)

; ----------------------------------------------------------------------
; image-dired 모드 설정
; ----------------------------------------------------------------------

;;(setq image-dired-cmd-create-temp-image-program "C:/Program Files/ImageMagick-6.8.0-Q16/convert.exe")
;;(setq image-dired-cmd-create-thumbnail-program "C:/Program Files/ImageMagick-6.8.0-Q16/convert.exe")
;;(setq image-dired-cmd-rotate-thumbnail-program "C:/Program Files/ImageMagick-6.8.0-Q16/mogrify.exe")



; ----------------------------------------------------------------------
; 텍스트 모드
; ----------------------------------------------------------------------

(defun my-text-indent-setup ()
  (setq indent-tabs-mode nil))
(add-hook 'text-mode-hook 'my-text-indent-setup)

; ----------------------------------------------------------------------
; C Sharp Mode
; ----------------------------------------------------------------------

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
	  (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

; ----------------------------------------------------------------------
; clojure-mode
; ----------------------------------------------------------------------

(require 'package)
(add-to-list 'package-archives
			 '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
			 '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)

;; 클로저 자동 완성 기능
(require 'auto-complete)
(global-auto-complete-mode)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(add-hook 'clojure-nrepl-mode-hook 'ac-nrepl-setup)
;;

;;(defvar my-packages '(clojure-mode
;;					  clojure-test-mode
;;					  cider))

;;(dolist (p my-packages)
;;  (when (not (package-installed-p p))
;;	(package-install p)))

;;; 클로저 모드에서는 탭 문자 대신 공백 문자 사용
;;(defun my-clojure-indent-setup ()
;;  (setq indent-tabs-mode nil))

;;(defun setup-clojure ()
;;  (require 'clojure-mode)
;;  ;(require 'nrepl) ; nrepl
;;  (add-hook 'clojure-mode-hook 'my-clojure-indent-setup))

; ----------------------------------------------------------------------
; org-mode
; ----------------------------------------------------------------------

(add-hook 'org-mode-hook
		  '(lambda()
			 (setq org-indent-indentation-per-level 4)
			 (org-indent-mode t)))

; ----------------------------------------------------------------------
; bat-mode
; ----------------------------------------------------------------------

(defun setup-bat ()
  (setq auto-mode-alist 
		(append 
		 (list (cons "\\.[bB][aA][tT]$" 'bat-mode))
         ; For DOS init files
		 (list (cons "CONFIG\\."   'bat-mode))
		 (list (cons "AUTOEXEC\\." 'bat-mode))
		 auto-mode-alist))
  (autoload 'bat-mode "bat-mode"
	"DOS and WIndows BAT files" t))

; ----------------------------------------------------------------------
; Common Lisp 환경
; ----------------------------------------------------------------------

(defun setup-common-lisp (impl)
  (let (impl-name (downcase impl))
	(cond ((string= impl-name "clisp")
		   (setq inferior-lisp-program "C:/app/clisp/clisp.exe"))
		  ((string= impl-name "sbcl")
		   (setq inferior-lisp-program "C:/app/sbcl/sbcl.exe"))
		  (t
		   (setq inferior-lisp-program "C:/app/sbcl/sbcl.exe")))
	(add-to-list 'load-path "C:/app/slime")
	(require 'slime)
	(slime-setup '(slime-fancy slime-fuzzy slime-c-p-c))
    ;(setq common-lisp-hyperspec-root "C:/app/HyperSpec/")
	(setq slime-net-coding-system 'utf-8-unix)))

; ----------------------------------------------------------------------
; graphviz dot mode
; ----------------------------------------------------------------------

(defun setup-graphviz ()
  (load-file "~/.emacs.d/graphviz-dot-mode.el"))

; ----------------------------------------------------------------------
; c/c++-mode
; ----------------------------------------------------------------------

(defun setup-c (style)
  ; 스타일
  ; bsd, ellemtel, gnu, k&r, stroustrup, whitesmith, java
  (add-hook 'c-mode-common-hook '(lambda () (c-set-style style)))

  ; c++ 모드의 탭 설정
  (defun my-c++-indent-setup ()
	(setq c-basic-offset 4) ; 탭 버튼 입력시 탭 크기 설정
	(setq indent-tabs-mode t))
  (add-hook 'c++-mode-hook 'my-c++-indent-setup)
  (add-hook 'cc-mode-hook 'my-c++-indent-setup)
  (add-hook 'c-mode-hook 'my-c++-indent-setup))

; ----------------------------------------------------------------------
; lua-mode
; ----------------------------------------------------------------------

(defun setup-lua ()
  (setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
  (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
  (add-hook 'lua-mode-hook 'turn-on-font-lock))

; ----------------------------------------------------------------------
; hlsl-mode
; ----------------------------------------------------------------------

(defun setup-hlsl ()
  (require 'hlsl-mode))

; ----------------------------------------------------------------------
; twitter mode
; ----------------------------------------------------------------------

(defun setup-twitter ()
  (autoload 'twitter-get-friends-timeline "twitter" nil t)
  (autoload 'twitter-status-edit "twitter" nil t)
  (global-set-key "\C-xt" 'twitter-get-friends-timeline)
  (add-hook 'twitter-status-edit-mode-hook 'longlines-mode))

; ----------------------------------------------------------------------
; 문자셋
; ----------------------------------------------------------------------

(defun setup-language ()
  (set-language-environment "korean")
  (setq-default coding-system 'utf-8-with-signature)
  (setq-default buffer-file-coding-system 'utf-8-with-signature)
  (setq-default buffer-coding-system 'utf-8-with-signature)
  (setq-default file-name-coding-system 'utf-8-with-signature)
  (setq file-coding-system 'utf-8-with-signature)
  (setq terminal-coding-system 'utf-8-with-signature)

  ; 구문 강조 사용 여부(t=yes, nil=no)
  (global-font-lock-mode t)

  ;; ----------------------------------------------------------------------
  ;; 폰트
  ;; ----------------------------------------------------------------------
  ;; * 영문 폰트 이름
  ;;
  ;;   Monaco, DejaVu Sans Mono, Fixedsys Excelsior 3.01, Sudo, Consola Mono
  ;;
  ;; * 한글 폰트 이름
  ;;
  ;;   D2Coding, DungGeunMo 나눔고딕 Bold, KoreaS명조 Regular, Malgun Gothic, 맑은 고딕, BeoGeumDal
  ;;   나눔바른고딕, 나눔바른고딕 Bold
  ;;
  ;; * 한자 폰트 이름
  ;;
  ;;   Microsoft JhengHei Bold, SimHei
  ;;
  ;; * 일어 폰트
  ;;
  ;;   MS PGothic

  (when window-system
	(let ((default-font-name "D2Coding 10") ; 기본 폰트
		  (fixed-font-name "D2Coding") ; 고정폭 폰트
		  (hangul-font-name '("나눔바른고딕" . "unicode-bmp"))
		  (symbol-font-name '("나눔바른고딕" . "unicode-bmp"))
		   (chinese-font-name '("SimHei" . "unicode-bmp"))
		   (japanese-font-name '("MS PGothic" . "unicode-bmp")))

      ;; 기본 폰트
	  (set-default-font default-font-name)
	  (set-face-font 'fixed-pitch fixed-font-name)

      ;; 한글
	  (set-fontset-font "fontset-default" 'hangul hangul-font-name)
	  (set-fontset-font "fontset-default" '(#x1100 . #x11ff) hangul-font-name) ; 한글 자모
	  (set-fontset-font "fontset-default" '(#x3130 . #x318f) hangul-font-name) ; 호환용 한글 자모
	  (set-fontset-font "fontset-default" '(#xa960 . #xa97f) hangul-font-name) ; 한글 자모 확장-A
	  (set-fontset-font "fontset-default" '(#xac00 . #xd7af) hangul-font-name) ; 한글 글자 마디
	  (set-fontset-font "fontset-default" '(#xd7b0 . #xd7ff) hangul-font-name) ; 한글 자모 확장-B

      ;; 기호
	  (set-fontset-font "fontset-default" '(#x3000 . #x303f) symbol-font-name) ; 한중일 기호 및 구두점
	  (set-fontset-font "fontset-default" '(#xe0bc . #xf66e) symbol-font-name) ; 유니코드 사용자 영역

      ;; 한자
	  (set-fontset-font "fontset-default" 'han chinese-font-name)
	  (set-fontset-font "fontset-default" 'cjk-misc chinese-font-name)
	  (set-fontset-font "fontset-default" '(#x2ff0 . #x2fff) chinese-font-name) ; 한자 생김꼴 지시 부호
	  (set-fontset-font "fontset-default" '(#x31c0 . #x31ef) chinese-font-name) ; 한중일 한자 획
	  (set-fontset-font "fontset-default" '(#x3400 . #x4dbf) chinese-font-name) ; 한중일 통합 한자 확장-A
	  (set-fontset-font "fontset-default" '(#x4e00 . #x9fbf) chinese-font-name) ; 한중일 통합 한자
	  (set-fontset-font "fontset-default" '(#xf900 . #xfaff) chinese-font-name) ; 한중일 호환용 한자
	  (set-fontset-font "fontset-default" '(#x20000 . #x2a6df) chinese-font-name) ; 한중일 통합 한자 확장-B
	  (set-fontset-font "fontset-default" '(#x2f800 . #x2fa1f) chinese-font-name) ; 한중일 호환용 한자 보충

      ;; 일어
	  (set-fontset-font "fontset-default" 'kana japanese-font-name))))

;----------------------------------------------------------------------
; setup
;----------------------------------------------------------------------

;(setup-custom-theme) ; 색상 테마
(setup-window 10 10 160 40) ; 창 위치 및 크기 지정
(setup-language)
(setup-bat)
;(setup-lua)
;(setup-c "bsd")
;(setup-common-lisp "sbcl")
;(setup-graphviz)
;(setup-clojure)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(require 'deeper-blue-theme)
;(require 'tomorrow-night-eighties-theme)
;(require 'retro-green-theme) ; 초록색 테마

; ----------------------------------------------------------------------
; rainbow mode
; ----------------------------------------------------------------------

;;(require 'rainbow-delimiters)
;;(add-hook 'prog-mode-hook #'rainbow-identifiers-mode)
;;(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;;(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
;;(global-rainbow-delimiters-mode)

(load-file "~/.emacs.d/system/clojure.el")

;----------------------------------------------------------------------

(require 'neotree)
(setq neo-theme 'ascii) ; 아이콘 사용 안함
(setq neo-window-width 30) ; 가로 크기 설정
(custom-set-variables '(setq neo-window-width 30))
(define-key global-map (kbd "C-x t") 'neotree-toggle)
(neotree) ; Emacs가 실행될 때 neotree를 띄운다.

(require 'projectile)
(projectile-global-mode)

(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
	 (add-to-list 'ac-modes 'cider-mode)
	 (add-to-list 'ac-modes 'cider-repl-mode)))

(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)

(defun find-file (filename)
  (interactive "FFind file: ")
  (switch-to-buffer (find-file-noselect filename)))

(find-file "D:/todo/note.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(ztree zerodark-theme zenburn-theme underwater-theme ubuntu-theme stekene-theme solarized-theme smex reverse-theme rainbow-mode rainbow-identifiers rainbow-delimiters quasi-monochrome-theme projectile per-buffer-theme paredit nrepl-sync neotree monokai-theme ir-black-theme imenu-anywhere idle-highlight-mode highlight-parentheses helm-themes gruber-darker-theme grandshell-theme gotham-theme flx-ido darktooth-theme darcula-theme cyberpunk-theme colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clojure-test-mode clojure-quick-repls clojure-mode-extra-font-locking clojure-cheatsheet bongo birds-of-paradise-plus-theme auto-compile anti-zenburn-theme alect-themes ahungry-theme ag ac-cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
