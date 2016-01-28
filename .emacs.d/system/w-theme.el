;;
;; color theme
;;
;; author: warmworm
;; create: 2013.04.24
;; last update: 2013.04.24
;;
;; usage:
;;    (require 'w-colors)
;;    (w-color-gray)
;;
 
;;======================================================================
;; color theme
;======================================================================

;; 회색 테마
(defun w-color-gray ()
  (when window-system
	(set-cursor-color "#DAD085") ; 커서색
	(set-mouse-color "#DAD085")
	(set-background-color "#272821") ; 기본 배경색
	(set-foreground-color "#F8F8F2") ; 기본 전경색
	(set-face-background 'region "#6DC5F1") ; 선택된 영역 배경색
	(set-face-foreground 'region "black") ; 선택된 영역 전경색
	;(set-face-background 'modeline "white") ; 모드 라인의 배경색
	;(set-face-foreground 'modeline "black") ; 모드 라인의 전경색
	(set-face-foreground 'font-lock-builtin-face "#A6E22A") ; 전처리기 등
	(set-face-foreground 'font-lock-preprocessor-face "#A6E22A") ; 전처리기. default로 font-lock-builtin-face에서 상속 받음
	(set-face-foreground 'font-lock-comment-face "#75715D") ; 주석문
	(set-face-foreground 'font-lock-comment-delimiter-face "#75715D") ; /* */ 스타일의 주석문
	(set-face-foreground 'font-lock-constant-face "#A6E22A")
	(set-face-foreground 'font-lock-doc-face "#65B042")
	(set-face-foreground 'font-lock-string-face "#DFD874")
	(set-face-foreground 'font-lock-function-name-face "#F1266F")
	(set-face-foreground 'font-lock-keyword-face "#66D9EF")
	(set-face-foreground 'font-lock-type-face "#89BDFF")
	(set-face-foreground 'font-lock-variable-name-face "#A6E22A")
	(set-face-foreground 'font-lock-warning-face "#FD5FF1")
	(set-face-foreground 'font-lock-negation-char-face "#F8F8F2")
	(global-hl-line-mode t) ; 현재 줄 강조(t=yes, nil=no(default)
	(set-face-background 'hl-line "#1A1A1A"))) ; 현재 줄 강조색(global-hl-line-mode가 켜져 있어야 함)

;; 파란색 테마
(defun w-color-blue ()
  (when window-system
	(set-cursor-color "#DAD085") ; 커서색
	(set-mouse-color "#DAD085")
	(set-background-color "#001D39") ; 기본 배경색
	(set-foreground-color "#808080") ; 기본 전경색
	(set-face-background 'region "#6DC5F1") ; 선택된 영역 배경색
	(set-face-foreground 'region "black") ; 선택된 영역 전경색
	(set-face-background 'modeline "white") ; 모드 라인의 배경색
	(set-face-foreground 'modeline "black") ; 모드 라인의 전경색
	(set-face-foreground 'font-lock-builtin-face "#FFFF00")
	(set-face-foreground 'font-lock-preprocessor-face "#FFFF00") ; 전처리기. default로 font-lock-builtin-face에서 상속 받음
	(set-face-foreground 'font-lock-comment-face "#008080")
	(set-face-foreground 'font-lock-comment-delimiter-face "#008080")
	(set-face-foreground 'font-lock-constant-face "#FF00FF") ; C 언어의 NULL과 같은 상수들
	(set-face-foreground 'font-lock-doc-face "#DFD874")
	(set-face-foreground 'font-lock-string-face "#FF0000") ; 문자열
	(set-face-foreground 'font-lock-function-name-face "#F1266F")
	(set-face-foreground 'font-lock-keyword-face "#00FF00"); 키워드. if, for 등
	(set-face-foreground 'font-lock-type-face "#808080") ; 사용자 정의형
	(set-face-foreground 'font-lock-variable-name-face "#FFFFFF") ; 선언 및 정의된 변수
	(set-face-foreground 'font-lock-warning-face "#FD5FF1")
	(set-face-foreground 'font-lock-negation-char-face "#008000")
	(global-hl-line-mode t) ; 현재 줄 강조(t=yes, nil=no(default)
	(set-face-background 'hl-line "#1A1A1A"))) ; 현재 줄 강조색(global-hl-line-mode가 켜져 있어야 함)

(provide 'w-theme)
