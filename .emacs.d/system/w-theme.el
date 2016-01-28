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

;; ȸ�� �׸�
(defun w-color-gray ()
  (when window-system
	(set-cursor-color "#DAD085") ; Ŀ����
	(set-mouse-color "#DAD085")
	(set-background-color "#272821") ; �⺻ ����
	(set-foreground-color "#F8F8F2") ; �⺻ �����
	(set-face-background 'region "#6DC5F1") ; ���õ� ���� ����
	(set-face-foreground 'region "black") ; ���õ� ���� �����
	;(set-face-background 'modeline "white") ; ��� ������ ����
	;(set-face-foreground 'modeline "black") ; ��� ������ �����
	(set-face-foreground 'font-lock-builtin-face "#A6E22A") ; ��ó���� ��
	(set-face-foreground 'font-lock-preprocessor-face "#A6E22A") ; ��ó����. default�� font-lock-builtin-face���� ��� ����
	(set-face-foreground 'font-lock-comment-face "#75715D") ; �ּ���
	(set-face-foreground 'font-lock-comment-delimiter-face "#75715D") ; /* */ ��Ÿ���� �ּ���
	(set-face-foreground 'font-lock-constant-face "#A6E22A")
	(set-face-foreground 'font-lock-doc-face "#65B042")
	(set-face-foreground 'font-lock-string-face "#DFD874")
	(set-face-foreground 'font-lock-function-name-face "#F1266F")
	(set-face-foreground 'font-lock-keyword-face "#66D9EF")
	(set-face-foreground 'font-lock-type-face "#89BDFF")
	(set-face-foreground 'font-lock-variable-name-face "#A6E22A")
	(set-face-foreground 'font-lock-warning-face "#FD5FF1")
	(set-face-foreground 'font-lock-negation-char-face "#F8F8F2")
	(global-hl-line-mode t) ; ���� �� ����(t=yes, nil=no(default)
	(set-face-background 'hl-line "#1A1A1A"))) ; ���� �� ������(global-hl-line-mode�� ���� �־�� ��)

;; �Ķ��� �׸�
(defun w-color-blue ()
  (when window-system
	(set-cursor-color "#DAD085") ; Ŀ����
	(set-mouse-color "#DAD085")
	(set-background-color "#001D39") ; �⺻ ����
	(set-foreground-color "#808080") ; �⺻ �����
	(set-face-background 'region "#6DC5F1") ; ���õ� ���� ����
	(set-face-foreground 'region "black") ; ���õ� ���� �����
	(set-face-background 'modeline "white") ; ��� ������ ����
	(set-face-foreground 'modeline "black") ; ��� ������ �����
	(set-face-foreground 'font-lock-builtin-face "#FFFF00")
	(set-face-foreground 'font-lock-preprocessor-face "#FFFF00") ; ��ó����. default�� font-lock-builtin-face���� ��� ����
	(set-face-foreground 'font-lock-comment-face "#008080")
	(set-face-foreground 'font-lock-comment-delimiter-face "#008080")
	(set-face-foreground 'font-lock-constant-face "#FF00FF") ; C ����� NULL�� ���� �����
	(set-face-foreground 'font-lock-doc-face "#DFD874")
	(set-face-foreground 'font-lock-string-face "#FF0000") ; ���ڿ�
	(set-face-foreground 'font-lock-function-name-face "#F1266F")
	(set-face-foreground 'font-lock-keyword-face "#00FF00"); Ű����. if, for ��
	(set-face-foreground 'font-lock-type-face "#808080") ; ����� ������
	(set-face-foreground 'font-lock-variable-name-face "#FFFFFF") ; ���� �� ���ǵ� ����
	(set-face-foreground 'font-lock-warning-face "#FD5FF1")
	(set-face-foreground 'font-lock-negation-char-face "#008000")
	(global-hl-line-mode t) ; ���� �� ����(t=yes, nil=no(default)
	(set-face-background 'hl-line "#1A1A1A"))) ; ���� �� ������(global-hl-line-mode�� ���� �־�� ��)

(provide 'w-theme)
