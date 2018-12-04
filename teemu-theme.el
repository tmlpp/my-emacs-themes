;;; teemu-theme.el --- Theme 

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
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:
 (deftheme teemu)
 (let ((class '((class color) (min-colors 89)))
       ;; base colors, number indicates LAB lightness
       (hl-dark  "#1C2C2F")
       (base21   "#223639") ; bg1
       (base27   "#324344") ; bg2
       (base33   "#41504F") ; bg3
       (base39   "#515E5A") ; bg4
       (base45   "#616C66")
       (base51   "#717B71") ; comment
       (base56   "#828A7D")
       (base62   "#939989") ; fg4
       (base68   "#A4A895") ; fg3
       (base74   "#B6B8A2") ; fg2
       (base80   "#C8C8AE") ; fg1
       (hl-light "#D0D0BB")

       (keyword  "#FF794D") ; orange
       (builtin  "#FF9B6C") ; l-orange
       (func     "#FE67FF") ; magenta
       (comment  "#FF8BFF") ; l-magenta
       (str      "#50B877") ; green
       (const    "#6ECC8F") ; l-green
       (var      "#4BB3BF") ; cyan
       (type     "#69C8D4") ; l-cyan
       (warning  "#FF67A6") ; pink
       (warning2 "#FF8DCB")) ; l-pink
   (custom-theme-set-faces
   'teemu
        `(default ((,class (:background ,base21 :foreground ,base80))))
        `(font-lock-builtin-face ((,class (:foreground ,builtin))))
        `(font-lock-comment-face ((,class (:foreground ,base51))))
	`(font-lock-negation-char-face ((,class (:foreground ,const))))
	`(font-lock-reference-face ((,class (:foreground ,const))))
	`(font-lock-constant-face ((,class (:foreground ,const))))
        `(font-lock-doc-face ((,class (:foreground ,comment))))
        `(font-lock-function-name-face ((,class (:foreground ,func ))))
        `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
        `(font-lock-string-face ((,class (:foreground ,str))))
        `(font-lock-type-face ((,class (:foreground ,type ))))
        `(font-lock-variable-name-face ((,class (:foreground ,var))))
        `(font-lock-warning-face ((,class (:foreground ,warning :background ,base27))))
        `(region ((,class (:background ,base27 :foreground ,base74))))
        `(highlight ((,class (:foreground ,base68 :background ,base33))))
	`(hl-line ((,class (:background  ,hl-dark))))
	`(fringe ((,class (:background ,base27 :foreground ,base62))))
	`(cursor ((,class (:background ,base80))))
        `(show-paren-match-face ((,class (:background ,warning))))
        `(isearch ((,class (:bold t :foreground ,warning :background ,base33))))
        `(mode-line ((,class (:foreground ,base74 :background ,base39))))
        `(mode-line-inactive ((,class (:foreground ,base74 :background ,base27 :weight normal))))
        `(mode-line-buffer-id ((,class (:bold t :foreground ,base74 :background nil))))
	`(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
        `(mode-line-emphasis ((,class (:foreground ,base80))))
	`(vertical-border ((,class (:foreground ,base68))))
        `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
        `(default-italic ((,class (:italic t))))
	`(link ((,class (:foreground ,const :underline t))))

	;; org-mode
	`(org-checkbox-statistics-todo ((,class (:foreground ,base51))))
	`(org-code ((,class (:foreground ,base74))))
	`(org-ellipsis ((,class (:underline nil))))
	`(org-hide ((,class (:foreground ,base21))))
	`(org-scheduled ((,class (:foreground ,type))))
	`(org-verbatim ((,class (:foreground ,base62))))
        `(org-agenda-calendar-event ((,class (:bold t :foreground ,base80))))
        `(org-agenda-date ((,class (:foreground ,var))))
        `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword))))
        `(org-agenda-date-weekend ((,class (:weight normal :foreground ,base62))))
        `(org-agenda-done ((,class (:foreground ,base39))))
        `(org-agenda-structure ((,class (:weight bold :foreground ,base68 :background ,base33))))
        `(org-block ((,class (:foreground ,base68))))
        `(org-date ((,class (:underline t :foreground ,warning2))))
        `(org-document-info-keyword ((,class (:foreground ,func))))
        `(org-done ((,class (:bold t :foreground ,str))))
        `(org-footnote  ((,class (:underline t :foreground ,base62))))
        `(org-level-1 ((,class (:bold t :foreground ,type))))
        `(org-level-2 ((,class (:inherit org-level-1))))
        `(org-level-3 ((,class (:inherit org-level-1))))
        `(org-level-4 ((,class (:inherit org-level-1))))
        `(org-level-5 ((,class (:inherit org-level-1))))
        `(org-level-6 ((,class (:inherit org-level-1))))
        `(org-level-7 ((,class (:inherit org-level-1))))
        `(org-level-8 ((,class (:inherit org-level-1))))
        `(org-link ((,class (:underline t :foreground ,warning))))
        `(org-quote ((,class (:inherit org-block :slant italic))))
        `(org-scheduled-today ((,class (:foreground ,const :weight bold))))
        `(org-scheduled-previously ((,class (:foreground ,keyword :weight bold))))
        `(org-special-keyword ((,class (:foreground ,base51))))
        `(org-time-grid ((,class (:foreground ,base51))))
        `(org-todo ((,class (:foreground ,builtin :bold t))))
        `(org-verse ((,class (:inherit org-block :slant italic))))
        `(org-warning ((,class (:underline t :foreground ,warning))))

	`(font-latex-bold-face ((,class (:foreground ,type))))
	`(font-latex-italic-face ((,class (:foreground ,var :italic t))))
	`(font-latex-string-face ((,class (:foreground ,str))))
	`(font-latex-match-reference-keywords ((,class (:foreground ,const))))
	`(font-latex-match-variable-keywords ((,class (:foreground ,var))))
	`(ido-only-match ((,class (:foreground ,warning))))
	`(org-sexp-date ((,class (:foreground ,base62))))
	`(ido-first-match ((,class (:foreground ,keyword :bold t))))
	`(gnus-header-content ((,class (:foreground ,keyword))))
	`(gnus-header-from ((,class (:foreground ,var))))
	`(gnus-header-name ((,class (:foreground ,type))))
	`(gnus-header-subject ((,class (:foreground ,func :bold t))))
	`(mu4e-view-url-number-face ((,class (:foreground ,type))))
	`(mu4e-cited-1-face ((,class (:foreground ,base74))))
	`(mu4e-cited-7-face ((,class (:foreground ,base68))))
	`(mu4e-header-marks-face ((,class (:foreground ,type))))
	`(ffap ((,class (:foreground ,base62))))
	`(js2-private-function-call ((,class (:foreground ,const))))
	`(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
	`(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
	`(js2-external-variable ((,class (:foreground ,type  ))))
        `(js2-function-param ((,class (:foreground ,const))))
        `(js2-jsdoc-value ((,class (:foreground ,str))))
        `(js2-private-member ((,class (:foreground ,base68))))
        `(js3-warning-face ((,class (:underline ,keyword))))
        `(js3-error-face ((,class (:underline ,warning))))
        `(js3-external-variable-face ((,class (:foreground ,var))))
        `(js3-function-param-face ((,class (:foreground ,base74))))
        `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
        `(js3-instance-member-face ((,class (:foreground ,const))))
	`(warning ((,class (:foreground ,warning)))) 
	`(ac-completion-face ((,class (:underline t :foreground ,keyword))))
	`(info-quoted-name ((,class (:foreground ,builtin))))
	`(info-string ((,class (:foreground ,str))))
	`(icompletep-determined ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
        `(undo-tree-visualizer-default-face ((,class :foreground ,base74)))
        `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
        `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
	`(slime-repl-inputed-output-face ((,class (:foreground ,type))))
        `(trailing-whitespace ((,class :foreground nil :background ,warning)))
        `(rainbow-delimiters-depth-1-face ((,class :foreground ,base80)))
        `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
        `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
        `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
        `(rainbow-delimiters-depth-6-face ((,class :foreground ,base80)))
        `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
        `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
        `(magit-item-highlight ((,class :background ,base33)))
        `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
        `(magit-hunk-heading           ((,class (:background ,base33))))
        `(magit-section-highlight      ((,class (:background ,base27))))
        `(magit-hunk-heading-highlight ((,class (:background ,base33))))
        `(magit-diff-context-highlight ((,class (:background ,base33 :foreground ,base68))))
        `(magit-diffstat-added   ((,class (:foreground ,type))))
        `(magit-diffstat-removed ((,class (:foreground ,var))))
        `(magit-process-ok ((,class (:foreground ,func :weight bold))))
        `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
        `(magit-branch ((,class (:foreground ,const :weight bold))))
        `(magit-log-author ((,class (:foreground ,base68))))
        `(magit-hash ((,class (:foreground ,base74))))
        `(magit-diff-file-header ((,class (:foreground ,base74 :background ,base33))))
        `(lazy-highlight ((,class (:foreground ,base74 :background ,base33))))
        `(term ((,class (:foreground ,base80 :background ,base21))))
        `(term-color-black ((,class (:foreground ,base33 :background ,base33))))
        `(term-color-blue ((,class (:foreground ,func :background ,func))))
        `(term-color-red ((,class (:foreground ,keyword :background ,base33))))
        `(term-color-green ((,class (:foreground ,type :background ,base33))))
        `(term-color-yellow ((,class (:foreground ,var :background ,var))))
        `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
        `(term-color-cyan ((,class (:foreground ,str :background ,str))))
        `(term-color-white ((,class (:foreground ,base74 :background ,base74))))
        `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
        `(helm-header ((,class (:foreground ,base74 :background ,base21 :underline nil :box nil))))
        `(helm-source-header ((,class (:foreground ,keyword :background ,base21 :underline nil :weight bold))))
        `(helm-selection ((,class (:background ,base27 :underline nil))))
        `(helm-selection-line ((,class (:background ,base27))))
        `(helm-visible-mark ((,class (:foreground ,base21 :background ,base33))))
        `(helm-candidate-number ((,class (:foreground ,base21 :background ,base80))))
        `(helm-separator ((,class (:foreground ,type :background ,base21))))
        `(helm-time-zone-current ((,class (:foreground ,builtin :background ,base21))))
        `(helm-time-zone-home ((,class (:foreground ,type :background ,base21))))
        `(helm-buffer-not-saved ((,class (:foreground ,type :background ,base21))))
        `(helm-buffer-process ((,class (:foreground ,builtin :background ,base21))))
        `(helm-buffer-saved-out ((,class (:foreground ,base80 :background ,base21))))
        `(helm-buffer-size ((,class (:foreground ,base80 :background ,base21))))
        `(helm-ff-directory ((,class (:foreground ,func :background ,base21 :weight bold))))
        `(helm-ff-file ((,class (:foreground ,base80 :background ,base21 :weight normal))))
        `(helm-ff-executable ((,class (:foreground ,var :background ,base21 :weight normal))))
        `(helm-ff-invalid-symlink ((,class (:foreground ,warning2 :background ,base21 :weight bold))))
        `(helm-ff-symlink ((,class (:foreground ,keyword :background ,base21 :weight bold))))
        `(helm-ff-prefix ((,class (:foreground ,base21 :background ,keyword :weight normal))))
        `(helm-grep-cmd-line ((,class (:foreground ,base80 :background ,base21))))
        `(helm-grep-file ((,class (:foreground ,base80 :background ,base21))))
        `(helm-grep-finish ((,class (:foreground ,base74 :background ,base21))))
        `(helm-grep-lineno ((,class (:foreground ,base80 :background ,base21))))
        `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
        `(helm-grep-running ((,class (:foreground ,func :background ,base21))))
        `(helm-moccur-buffer ((,class (:foreground ,func :background ,base21))))
        `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
        `(helm-bookmark-w3m ((,class (:foreground ,type))))
        `(company-echo-common ((,class (:foreground ,base21 :background ,base80))))
        `(company-preview ((,class (:background ,base21 :foreground ,var))))
        `(company-preview-common ((,class (:foreground ,base27 :foreground ,base68))))
        `(company-preview-search ((,class (:foreground ,type :background ,base21))))
        `(company-scrollbar-bg ((,class (:background ,base33))))
        `(company-scrollbar-fg ((,class (:foreground ,keyword))))
        `(company-tooltip ((,class (:foreground ,base74 :background ,base21 :bold t))))
        `(company-tooltop-annotation ((,class (:foreground ,const))))
        `(company-tooltip-common ((,class ( :foreground ,base68))))
        `(company-tooltip-common-selection ((,class (:foreground ,str))))
        `(company-tooltip-mouse ((,class (:inherit highlight))))
        `(company-tooltip-selection ((,class (:background ,base33 :foreground ,base68))))
        `(company-template-field ((,class (:inherit region))))
        `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
        `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
        `(web-mode-keyword-face ((,class (:foreground ,keyword))))
        `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
        `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
        `(web-mode-string-face ((,class (:foreground ,str))))
        `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
        `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
        `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
        `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
        `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
        `(jde-java-font-lock-package-face ((t (:foreground ,var))))
        `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
        `(jde-java-font-lock-modifier-face ((t (:foreground ,base74))))
        `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
        `(jde-java-font-lock-number-face ((t (:foreground ,var))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'teemu)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; teemu-theme.el ends here
