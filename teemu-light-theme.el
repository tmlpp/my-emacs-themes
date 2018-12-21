;;; teemu-light-theme.el --- Theme 

;; Copyright (C) 2016 , Teemu Lappi

;; Author: Teemu Lappi
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;;  ANY WARRANTY; without even the implied warranty of
;; LITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;;  Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:
; #B23511
; #8D0800
; #00753A
; #00551E
; #00717D
; #00525E
; #B305B8
; #8F0096
; #CE005C
; #A70040
; #2465BB
; #004899
;;; Code:
 (deftheme teemu-light)
 (let ((class '((class color) (min-colors 89)))
       ;; base colors, number indicates LAB lightness
       (hl-dark  "#1C2C2F")
       (light1   "#223639") ; bg1     : base 21
       (light2   "#324344") ; bg2     : base 27
       (light3   "#41504F") ; bg3     : base 33
       (light4   "#515E5A") ; bg4     : base 39
       (light5   "#616C66") ;         : base 45
       (middle   "#717B71") ; comment : base 51
       (dark5   "#828A7D") ;         : base 56
       (dark4   "#939989") ; fg4     : base 62
       (dark3   "#A4A895") ; fg3     : base 68
       (dark2   "#B6B8A2") ; fg2     : base 74
       (dark1   "#C8C8AE") ; fg1     : base 80
       (hl-light "#D0D0BB")

       (red1     "#B23511") ; orange    : keyword
       (red2     "#8D0800") ; l-orange  : builtin
       (green1   "#00753A") ; green     : str
       (green2   "#00551E") ; l-green   : const
       (cyan1    "#00717D") ; cyan      : var
       (cyan2    "#00525E") ; l-cyan    : type
       (magenta1 "#B305B8") ; magenta   : func
       (magenta2 "#8F0096") ; l-magenta : comment
       (pink1    "#CE005C") ; pink      : warning
       (pink2    "#A70040") ; l-pink    : warning2
       )
   (custom-theme-set-faces
   'teemu-light
        `(default ((,class (:background ,dark1 :foreground ,light1))))
        `(font-lock-builtin-face ((,class (:foreground ,red2))))
        `(font-lock-comment-face ((,class (:foreground ,middle))))
	`(font-lock-negation-char-face ((,class (:foreground ,green2))))
	`(font-lock-reference-face ((,class (:foreground ,green2))))
	`(font-lock-constant-face ((,class (:foreground ,green2))))
        `(font-lock-doc-face ((,class (:foreground ,magenta2))))
        `(font-lock-function-name-face ((,class (:foreground ,magenta1 ))))
        `(font-lock-keyword-face ((,class (:bold ,class :foreground ,red1))))
        `(font-lock-string-face ((,class (:foreground ,green1))))
        `(font-lock-type-face ((,class (:foreground ,cyan2 ))))
        `(font-lock-variable-name-face ((,class (:foreground ,cyan1))))
        `(font-lock-warning-face ((,class (:foreground ,pink1 :background ,dark2))))
        `(region ((,class (:background ,dark2 :foreground ,light2))))
        `(highlight ((,class (:foreground ,light3 :background ,dark3))))
	`(hl-line ((,class (:background  ,hl-light))))
	`(fringe ((,class (:background ,dark2 :foreground ,light4))))
	`(cursor ((,class (:background ,light1))))
        `(show-paren-match-face ((,class (:background ,pink1))))
        `(isearch ((,class (:bold t :foreground ,pink1 :background ,dark3))))
        `(mode-line ((,class (:foreground ,light2 :background ,dark4))))
        `(mode-line-inactive ((,class (:foreground ,light2 :background ,dark2 :weight normal))))
        `(mode-line-buffer-id ((,class (:bold t :foreground ,light2 :background nil))))
	`(mode-line-highlight ((,class (:foreground ,red1 :box nil :weight bold))))
        `(mode-line-emphasis ((,class (:foreground ,light1))))
	`(vertical-border ((,class (:foreground ,light3))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,red1))))
        `(default-italic ((,class (:italic t))))
	`(link ((,class (:foreground ,green2 :underline t))))

	;; org-mode
	`(org-checkbox-statistics-todo ((,class (:foreground ,middle))))
	`(org-code ((,class (:foreground ,light2))))
	`(org-ellipsis ((,class (:underline nil))))
	`(org-hide ((,class (:foreground ,dark1))))
	`(org-scheduled ((,class (:foreground ,cyan2))))
	`(org-verbatim ((,class (:foreground ,light4))))
        `(org-agenda-calendar-event ((,class (:foreground ,light1))))
        `(org-agenda-date ((,class (:foreground ,cyan1))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,red1))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,light4))))
        `(org-agenda-done ((,class (:foreground ,dark4))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,light3 :background ,dark3))))
        `(org-block ((,class (:foreground ,light3))))
        `(org-date ((,class (:underline t :foreground ,pink2))))
        `(org-document-info-keyword ((,class (:foreground ,magenta1))))
        `(org-done ((,class (:bold t :foreground ,green1))))
        `(org-footnote  ((,class (:underline t :foreground ,light4))))
        `(org-level-1 ((,class (:bold t :foreground ,cyan2))))
        `(org-level-2 ((,class (:inherit org-level-1))))
        `(org-level-3 ((,class (:inherit org-level-1))))
        `(org-level-4 ((,class (:inherit org-level-1))))
        `(org-level-5 ((,class (:inherit org-level-1))))
        `(org-level-6 ((,class (:inherit org-level-1))))
        `(org-level-7 ((,class (:inherit org-level-1))))
        `(org-level-8 ((,class (:inherit org-level-1))))
        `(org-link ((,class (:underline t :foreground ,pink1))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-scheduled-today ((,class (:foreground ,cyan2 :weight bold))))
        `(org-scheduled-previously ((,class (:foreground ,red2 :weight bold))))
        `(org-special-keyword ((,class (:foreground ,middle))))
        `(org-time-grid ((,class (:foreground ,middle))))
        `(org-todo ((,class (:foreground ,red2 :bold t))))
        `(org-upcoming-deadline ((,class (:foreground ,cyan1))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-warning ((,class (:foreground ,red2))))

	; elfeed
        `(elfeed-search-date-face ((,class (:foreground ,red2))))
        `(elfeed-search-feed-face ((,class (:foreground ,green2))))
        `(elfeed-search-tag-face ((,class (:foreground ,cyan1))))
        `(elfeed-search-title-face ((,class (:foreground ,middle))))
        `(elfeed-search-unread-title-face ((,class (:foreground ,light1))))
	`(powerline-active1 ((,class (:foreground ,red1 :background ,light1))))
	`(font-latex-bold-face ((,class (:foreground ,cyan2))))
	`(font-latex-italic-face ((,class (:foreground ,cyan1 :italic t))))
	`(font-latex-string-face ((,class (:foreground ,green1))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,green2))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,cyan1))))
	`(ido-only-match ((,class (:foreground ,pink1))))
	`(org-sexp-date ((,class (:foreground ,light4))))
	`(ido-first-match ((,class (:foreground ,red1 :bold t))))
	`(gnus-header-content ((,class (:foreground ,red1))))
	`(gnus-header-from ((,class (:foreground ,cyan1))))
	`(gnus-header-name ((,class (:foreground ,cyan2))))
	`(gnus-header-subject ((,class (:foreground ,magenta1 :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,cyan2))))
	`(mu4e-cited-1-face ((,class (:foreground ,light2))))
	`(mu4e-cited-7-face ((,class (:foreground ,light3))))
	`(mu4e-header-marks-face ((,class (:foreground ,cyan2))))
	`(ffap ((,class (:foreground ,light4))))
	`(js2-private-function-call ((,class (:foreground ,green2))))
	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,green1))))
	`(js2-jsdoc-html-tag-name ((,class (:foreground ,cyan1))))
	`(js2-external-variable ((,class (:foreground ,cyan2  ))))
        `(js2-function-param ((,class (:foreground ,green2))))
        `(js2-jsdoc-value ((,class (:foreground ,green1))))
        `(js2-private-member ((,class (:foreground ,light3))))
        `(js3-warning-face ((,class (:underline ,red1))))
        `(js3-error-face ((,class (:underline ,pink1))))
        `(js3-external-variable-face ((,class (:foreground ,cyan1))))
        `(js3-function-param-face ((,class (:foreground ,light2))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,red1))))
        `(js3-instance-member-face ((,class (:foreground ,green2))))
	`(warning ((,class (:foreground ,pink1)))) 
	`(ac-completion-face ((,class (:underline t :foreground ,red1))))
	`(info-quoted-name ((,class (:foreground ,red2))))
	`(info-string ((,class (:foreground ,green1))))
	`(icompletep-determined ((,class :foreground ,red2)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,red2)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,light2)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,cyan1)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,cyan2)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,cyan2))))
        `(trailing-whitespace ((,class :foreground nil :background ,pink1)))
        `(rainbow-delimiters-depth-1-face ((,class :foreground ,light1)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,cyan2)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,cyan1)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,green2)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,red1)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,light1)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,cyan2)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,cyan1)))
        `(magit-item-highlight ((,class :background ,dark3)))
        `(magit-section-heading        ((,class (:foreground ,red1 :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,dark3))))
        `(magit-section-highlight      ((,class (:background ,dark2))))
        `(magit-hunk-heading-highlight ((,class (:background ,dark3))))
        `(magit-diff-context-highlight ((,class (:background ,dark3 :foreground ,light3))))
        `(magit-diffstat-added   ((,class (:foreground ,cyan2))))
        `(magit-diffstat-removed ((,class (:foreground ,cyan1))))
        `(magit-process-ok ((,class (:foreground ,magenta1 :weight bold))))
        `(magit-process-ng ((,class (:foreground ,pink1 :weight bold))))
        `(magit-branch ((,class (:foreground ,green2 :weight bold))))
        `(magit-log-author ((,class (:foreground ,light3))))
        `(magit-hash ((,class (:foreground ,light2))))
        `(magit-diff-file-header ((,class (:foreground ,light2 :background ,dark3))))
        `(lazy-highlight ((,class (:foreground ,light2 :background ,dark3))))
        `(term ((,class (:foreground ,light1 :background ,dark1))))
        `(term-color-black ((,class (:foreground ,dark3 :background ,dark3))))
        `(term-color-blue ((,class (:foreground ,magenta1 :background ,magenta1))))
        `(term-color-red ((,class (:foreground ,red1 :background ,dark3))))
        `(term-color-green ((,class (:foreground ,cyan2 :background ,dark3))))
        `(term-color-yellow ((,class (:foreground ,cyan1 :background ,cyan1))))
        `(term-color-magenta ((,class (:foreground ,red2 :background ,red2))))
        `(term-color-cyan ((,class (:foreground ,green1 :background ,green1))))
        `(term-color-white ((,class (:foreground ,light2 :background ,light2))))
        `(rainbow-delimiters-unmatched-face ((,class :foreground ,pink1)))
        `(helm-header ((,class (:foreground ,light2 :background ,dark1 :underline nil :box nil))))
        `(helm-source-header ((,class (:foreground ,red1 :background ,dark1 :underline nil :weight bold))))
        `(helm-selection ((,class (:background ,dark2 :underline nil))))
        `(helm-selection-line ((,class (:background ,dark2))))
        `(helm-visible-mark ((,class (:foreground ,dark1 :background ,dark3))))
        `(helm-candidate-number ((,class (:foreground ,dark1 :background ,light1))))
        `(helm-separator ((,class (:foreground ,cyan2 :background ,dark1))))
        `(helm-time-zone-current ((,class (:foreground ,red2 :background ,dark1))))
        `(helm-time-zone-home ((,class (:foreground ,cyan2 :background ,dark1))))
        `(helm-buffer-not-saved ((,class (:foreground ,cyan2 :background ,dark1))))
        `(helm-buffer-process ((,class (:foreground ,red2 :background ,dark1))))
        `(helm-buffer-saved-out ((,class (:foreground ,light1 :background ,dark1))))
        `(helm-buffer-size ((,class (:foreground ,light1 :background ,dark1))))
        `(helm-ff-directory ((,class (:foreground ,magenta1 :background ,dark1 :weight bold))))
        `(helm-ff-file ((,class (:foreground ,light1 :background ,dark1 :weight normal))))
        `(helm-ff-executable ((,class (:foreground ,cyan1 :background ,dark1 :weight normal))))
        `(helm-ff-invalid-symlink ((,class (:foreground ,pink2 :background ,dark1 :weight bold))))
        `(helm-ff-symlink ((,class (:foreground ,red1 :background ,dark1 :weight bold))))
        `(helm-ff-prefix ((,class (:foreground ,dark1 :background ,red1 :weight normal))))
        `(helm-grep-cmd-line ((,class (:foreground ,light1 :background ,dark1))))
        `(helm-grep-file ((,class (:foreground ,light1 :background ,dark1))))
        `(helm-grep-finish ((,class (:foreground ,light2 :background ,dark1))))
        `(helm-grep-lineno ((,class (:foreground ,light1 :background ,dark1))))
        `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
        `(helm-grep-running ((,class (:foreground ,magenta1 :background ,dark1))))
        `(helm-moccur-buffer ((,class (:foreground ,magenta1 :background ,dark1))))
        `(helm-source-go-package-godoc-description ((,class (:foreground ,green1))))
        `(helm-bookmark-w3m ((,class (:foreground ,cyan2))))
        `(company-echo-common ((,class (:foreground ,dark1 :background ,light1))))
        `(company-preview ((,class (:background ,dark1 :foreground ,cyan1))))
        `(company-preview-common ((,class (:foreground ,dark2 :foreground ,light3))))
        `(company-preview-search ((,class (:foreground ,cyan2 :background ,dark1))))
        `(company-scrollbar-bg ((,class (:background ,dark3))))
        `(company-scrollbar-fg ((,class (:foreground ,red1))))
        `(company-tooltip ((,class (:foreground ,light2 :background ,dark1 :bold t))))
        `(company-tooltop-annotation ((,class (:foreground ,green2))))
        `(company-tooltip-common ((,class ( :foreground ,light3))))
        `(company-tooltip-common-selection ((,class (:foreground ,green1))))
        `(company-tooltip-mouse ((,class (:inherit highlight))))
        `(company-tooltip-selection ((,class (:background ,dark3 :foreground ,light3))))
        `(company-template-field ((,class (:inherit region))))
        `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
        `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
        `(web-mode-keyword-face ((,class (:foreground ,red1))))
        `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
        `(web-mode-string-face ((,class (:foreground ,green1))))
        `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
        `(web-mode-html-attr-name-face ((,class (:foreground ,magenta1))))
        `(web-mode-html-attr-value-face ((,class (:foreground ,red1))))
        `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
        `(web-mode-html-tag-face ((,class (:foreground ,red2))))
        `(jde-java-font-lock-package-face ((t (:foreground ,cyan1))))
        `(jde-java-font-lock-public-face ((t (:foreground ,red1))))
        `(jde-java-font-lock-private-face ((t (:foreground ,red1))))
        `(jde-java-font-lock-constant-face ((t (:foreground ,green2))))
        `(jde-java-font-lock-modifier-face ((t (:foreground ,light2))))
        `(jde-jave-font-lock-protected-face ((t (:foreground ,red1))))
        `(jde-java-font-lock-number-face ((t (:foreground ,cyan1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'teemu-light)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; teemu-light-theme.el ends here
