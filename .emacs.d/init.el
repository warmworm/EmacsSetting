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

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

; 백업 파일
(setq auto-save-default nil) ; 자동 저장 여부 설정(t=yes, nil=no)
(setq make-backup-files nil) ; 백업 파일 만들지 여부 설정(t=yes, nil=no)

; ----------------------------------------------------------------------
; 편집 관련 기능
; ----------------------------------------------------------------------

(defun setup-editing ()
  ; 닫는 괄호 입력시 대응되는 여는 괄호에 커서가 머무르는 시간 지정(초 단위)
  (setq blink-matching-delay 0.1)

  ; 문서 맨 아래에서 down 키눌렀을 때 새 줄을 추가할지의 여부(t=yes, nil=no)
  (setq next-line-add-newlines nil) ; 파일 끝에 도달하면 새 줄을 추가하지 않고 멈추게 한다.
  
  ; 기본 탭 설정
  (setq-default tab-width 4) ; 기본 탭 크기
  (setq-default indent-tabs-mode t)) ; 들여쓰기시 탭 문자 사용 여부(t=탭문자 사용, nil=공백 문자 사용)

; ----------------------------------------------------------------------
; 뷰 관련
; ----------------------------------------------------------------------

(defun setup-view ()
  ; 초기화면
  (setq inhibit-splash-screen t) ; 초기 화면을 보여주지 않는다.

  ; 메뉴바
  (tool-bar-mode -1) ; 메뉴바의 아이콘 메뉴를 숨긴다.
  
  ; 줄 관련
  (setq-default line-spacing 3) ; 기본 줄 간격 설정
  (global-linum-mode t) ; 줄번호 표시
  (global-hl-line-mode) ; 현재 줄 강조
  (column-number-mode) ; 현재 줄/행 표시
  ;(setq-default truncate-lines t) ; 줄이 화면보다 길어질 경우 줄바꿈 해서 보여줄 지 여부
  ;(setq truncate-partial-width-windows nil) ; 윈도우의 오른쪽을 넘는 행의 표시를 제어한다. nil 이외이면 그런 줄을 자른다. 그렇지 않으면 truncate-lines에 따라 표시한다.

  ; 커서
  ;(setq column-number-mode t) ; 커서의 컬럼 위치 표시(t=yes, nil=no)
  (set-default 'cursor-type 'hbar) ; 커서를 _ 모양으로 변경한다.

  ; 괄호
  (show-paren-mode) ; 일치하는 괄호 강조 기능 켜기

  ; 스크롤바
  (scroll-bar-mode -1) ; 스크롤바를 숨긴다.
  
  ; 선택
  (setq transient-mark-mode t) ; 선택된 영역이 다른 부분과 구분되게 할지의 여부 설정(t=yes, nil=no)

  ; 버퍼
  (ido-mode) ; 미니버퍼를 통한 버퍼 선택 기능(C-x b 입력시. 방향키 and 엔터키 이용)
  
  ; 검색 및 치환
  (setq search-highlight t) ; 검색시 찾은 문자열 표시 여부 설정(t=yes, nil=no)
  (setq query-replace-highlight t) ; 치환시 찾은 문자열 표시 여부 설정(t=yes, nil=no)

  ; 구문 강조
  (global-font-lock-mode t) ; 구문 강조 사용 여부(t=yes, nil=no)
  
  ; 테마
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (add-to-list 'load-path "~/.emacs.d/themes")
  (require 'monokai-theme))

; ----------------------------------------------------------------------
; mode
; ----------------------------------------------------------------------

(defun setup-mode ()
  ; neotree --------------------------------------------------
  (require 'neotree)
  (setq neo-theme 'ascii) ; 아이콘 사용 안함
  (setq neo-window-width 30) ; 가로 크기 설정
  (define-key global-map (kbd "C-x t") 'neotree-toggle)
  ;(neotree) ; Emacs가 실행될 때 neotree를 띄운다.

  ; projectile --------------------------------------------------
  (require 'projectile)
  (projectile-global-mode)

  ; org-mode --------------------------------------------------
  (add-hook 'org-mode-hook
		  '(lambda()
			 (setq org-indent-indentation-per-level 2)
			 (org-indent-mode t)))

  ; Clojure --------------------------------------------------
  ; clojure mode
  (load-file "~/.emacs.d/system/clojure.el")
  
  ; 클로저 자동 완성 기능
  (require 'auto-complete)
  (require 'auto-complete-config)
  (ac-config-default)
  (global-auto-complete-mode)
  (add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
  (add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
  (add-hook 'clojure-nrepl-mode-hook 'ac-nrepl-setup)

  ; ac-cider
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

  ; C# --------------------------------------------------
  (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
  (setq auto-mode-alist
	    (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
  
  ; BAT --------------------------------------------------
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
; 문자셋
; ----------------------------------------------------------------------

(defun setup-language ()
  ; 파일 인코딩 자동 판별 모듈 로딩
  (require 'unicad)
  
  (set-language-environment "korean")
  (setq-default coding-system 'utf-8-with-signature)
  (setq-default buffer-file-coding-system 'utf-8-with-signature)
  (setq-default buffer-coding-system 'utf-8-with-signature)
  (setq-default file-name-coding-system 'utf-8-with-signature)
  (setq file-coding-system 'utf-8-with-signature)
  (setq terminal-coding-system 'utf-8-with-signature))

;; 폰트 설정
(defun setup-font()
  ; font names
  ;
  ; [English]
  ; Monaco, DejaVu Sans Mono, Fixedsys Excelsior 3.01, Sudo, Consola Mono
  ;
  ; [Korean]
  ; D2Coding, DungGeunMo, 나눔고딕 Bold, KoreaS명조 Regular, Malgun Gothic,
  ; 맑은 고딕, BeoGeumDal, 나눔바른고딕, 나눔바른고딕 Bold
  ;
  ; [Chinese]
  ; Microsoft JhengHei Bold, SimHei
  ;
  ; [Japanese]
  ; MS PGothic

  (when window-system
	(let ((default-font-name "D2Coding 10") ; 기본 폰트
		  (fixed-font-name "D2Coding") ; 고정폭 폰트
		  (hangul-font-name '("나눔고딕" . "unicode-bmp"))
		  (symbol-font-name '("나눔고딕" . "unicode-bmp"))
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
; 창
;----------------------------------------------------------------------

(defun setup-window ()
  ; 창 타이틀
  (setq frame-title-format "warmworm - Just do it.")

  ; 창 크기(또는 emacs -g 80x40)
  (setq initial-frame-alist '((width . 90) (height . 50))) ; 첫번째 프레임 크기
  (setq default-frame-alist '((width . 90) (height . 50))) ; 그 다음 프레임 크기(C-x 5 2 등으로 새로 생성한 프레임 크기)

  ; 창 분할
  ;(split-window-horizontally) ; 창을 좌우로 나눈다.
  ;(windmove-right) ; 오른쪽 창으로 이동한다.
  ;(split-window-vertically) ; 창을 위아래로 나눈다.
  ;(balance-windows) ; 윈도우 크기를 동일하게 조정(C-x +)

  ; 'Meta+방향키'로 창 이동
  (windmove-default-keybindings 'meta)

  ; 창 위치
  (set-frame-position (selected-frame) 50 40))

;----------------------------------------------------------------------
; setup
;----------------------------------------------------------------------

(setup-language)
(setup-font)
(setup-editing)
(setup-mode)
(setup-view)
(setup-window)

;----------------------------------------------------------------------

(defun find-file (filename)
  (interactive "FFind file: ")
  (switch-to-buffer (find-file-noselect filename)))

(find-file "D:/note.txt")
