;;; tmlpp-theme.el --- Theme 

;; Copyright (C) 2021 , Teemu Lappi

;; Author: Teemu Lappi
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Originally created with ThemeCreator, https://github.com/mswift42/themecreator.

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
(deftheme another)
(let ((class '((class color) (min-colors 89)))
      (base00   "#1C1C1C")
      (base01   "#2D2D2D")
      (base02   "#3F3F3F")
      (base03   "#525252")
      (base04   "#656565")
      (base05   "#7A7A7A")
      (base06   "#8F8F8F")
      (base07   "#A4A4A4")
      (base08   "#BABABA")
      (base09   "#D1D1D1")
      (base10   "#E8E8E8")
 
      (const  "#FF596B") ; coral pink
      (keyword    "#FF905B") ; orangish
      (str      "#DECE16") ; ugly yellow
      (func     "#2F9BFF") ; azure
      (builtin  "#AEA7FF") ; periwinkle blue
      (type     "#ECB6FF") ; light lavender
      (warning  "#22ad6a") ; jade green
      (var      "#27c8b0") ; turquoise
      (comment  "#7a7a7a")
      ) 
  (custom-theme-set-faces
   'another
   `(default ((,class (:background ,base00 :foreground ,base10))))
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func ))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,base01))))
   `(region ((,class (:background ,base01))))
   `(highlight ((,class (:foreground ,base08 :background ,base03))))
   `(highlight-indentation-face ((,class (:foreground ,base08 :background ,base03))))
   `(hl-line ((,class (:background  ,base01))))
   `(fringe ((,class (:background ,base01 :foreground ,base06))))
   `(cursor ((,class (:background ,base10))))
   ;; `(show-paren-match-face ((,class (:background ,base10))))
   `(show-paren-match ((,class (:background ,base03))))
   `(isearch ((,class (:bold t :foreground ,warning :background ,base02))))
   `(mode-line ((,class (:foreground ,base09 :background ,base02))))
   `(mode-line-inactive ((,class (:foreground ,base09 :background ,base01 :weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,base09 :background nil))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,base10))))
   `(vertical-border ((,class (:foreground ,base08))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,var :underline t))))

   ;; org-mode
   `(org-checkbox-statistics-todo ((,class (:foreground ,comment))))
   `(org-code ((,class (:foreground ,base09))))
   `(org-ellipsis ((,class (:underline nil))))
   `(org-hide ((,class (:foreground ,base00))))
   `(org-scheduled ((,class (:foreground ,comment))))
   `(org-verbatim ((,class (:foreground ,base06))))
   `(org-agenda-calendar-event ((,class (:foreground ,base10))))
   `(org-agenda-date ((,class (:foreground ,comment))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,base10))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,base06))))
   `(org-agenda-done ((,class (:foreground ,base06))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,base10))))
   `(org-block ((,class (:foreground ,base08))))
   `(org-date ((,class (:underline t :foreground ,var))))
   `(org-drawer ((,class (:foreground ,comment :slant italic))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(org-done ((,class (:bold t :foreground ,warning))))
   `(org-footnote  ((,class (:underline t :foreground ,base06))))
   `(org-headline-done ((,class (:foreground ,base07))))
   `(org-level-1 ((,class (:foreground ,base10))))
   `(org-level-2 ((,class (:inherit org-level-1))))
   `(org-level-3 ((,class (:inherit org-level-1))))
   `(org-level-4 ((,class (:inherit org-level-1))))
   `(org-level-5 ((,class (:inherit org-level-1))))
   `(org-level-6 ((,class (:inherit org-level-1))))
   `(org-level-7 ((,class (:inherit org-level-1))))
   `(org-level-8 ((,class (:inherit org-level-1))))
   `(org-link ((,class (:underline t :foreground ,var))))
   `(org-meta-line ((,class (:foreground ,comment :slant italic))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-scheduled-today ((,class (:foreground ,base10))))
   `(org-scheduled-previously ((,class (:foreground ,keyword :weight bold))))
   `(org-special-keyword ((,class (:foreground ,comment :slant italic))))
   `(org-tag ((,class (:foreground ,comment :slant italic))))
   `(org-time-grid ((,class (:foreground ,comment))))
   `(org-todo ((,class (:foreground ,keyword :bold t))))
   `(org-upcoming-deadline ((,class (:foreground ,comment))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-warning ((,class (:foreground ,warning))))

   `(org-habit-clear-face ((,class (:background ,base02 :foreground ,base00)))) ; days on which a task shouldn’t be done yet.
   `(org-habit-clear-future-face ((,class (:inherit org-habit-clear-face)))) ; future days on which a task shouldn’t be done yet.
   `(org-habit-ready-face ((,class (:background ,comment :foreground ,base00)))) ; days on which a task should start to be done.
   `(org-habit-ready-future-face ((,class (:inherit org-habit-ready-face)))) ; days on which a task should start to be done.
   `(org-habit-alert-face ((,class (:background ,base06 :foreground ,base00)))) ; days on which a task is due.
   `(org-habit-alert-future-face ((,class (:inherit org-habit-alert-face)))) ; days on which a task is due.
   `(org-habit-overdue-face ((,class (:background ,builtin :foreground ,base00)))) ; days on which a task is overdue.
   `(org-habit-overdue-future-face ((,class (:inherit org-habit-overdue-face)))) ; days on which a task is overdue.

   ;; elfeed
   `(elfeed-search-date-face ((,class (:foreground ,builtin))))
   `(elfeed-search-feed-face ((,class (:foreground ,const))))
   `(elfeed-search-tag-face ((,class (:foreground ,var))))
   `(elfeed-search-title-face ((,class (:family "IBM Plex Sans" :weight regular :foreground ,comment))))
   `(elfeed-search-unread-title-face ((,class (:family "IBM Plex Sans" :weight regular :foreground ,base10))))

   ;; highlight-indent-guides
   `(highlight-indent-guides-odd-face ((,class (:foreground ,base02))))
   `(highlight-indent-guides-even-face ((,class (:foreground ,base01))))
   `(highlight-indent-guides-character-face ((,class (:foreground ,base02))))

   `(font-latex-bold-face ((,class (:foreground ,type))))
   `(font-latex-italic-face ((,class (:foreground ,var :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
   `(ido-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,base06))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))
   `(mu4e-cited-1-face ((,class (:foreground ,base09))))
   `(mu4e-cited-7-face ((,class (:foreground ,base08))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(ffap ((,class (:foreground ,base06))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,var))))
   `(js2-external-variable ((,class (:foreground ,type  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,str))))
   `(js2-private-member ((,class (:foreground ,base08))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,var))))
   `(js3-function-param-face ((,class (:foreground ,base09))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning)))) 
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,base09)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,type)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,type))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,base10)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,base10)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
   `(magit-item-highlight ((,class :background ,base02)))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,base02))))
   `(magit-section-highlight      ((,class (:background ,base01))))
   `(magit-hunk-heading-highlight ((,class (:background ,base02))))
   `(magit-diff-context-highlight ((,class (:background ,base02 :foreground ,base08))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-log-author ((,class (:foreground ,base08))))
   `(magit-hash ((,class (:foreground ,base09))))
   `(magit-diff-file-header ((,class (:foreground ,base09 :background ,base02))))
   `(lazy-highlight ((,class (:foreground ,base09 :background ,base02))))
   `(term ((,class (:foreground ,base10 :background ,base00))))
   `(term-color-black ((,class (:foreground ,base02 :background ,base02))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,base02))))
   `(term-color-green ((,class (:foreground ,type :background ,base02))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,base09 :background ,base09))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,base09 :background ,base00 :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,base00 :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,base01 :underline nil))))
   `(helm-selection-line ((,class (:background ,base01))))
   `(helm-visible-mark ((,class (:foreground ,base00 :background ,base02))))
   `(helm-candidate-number ((,class (:foreground ,base00 :background ,base10))))
   `(helm-separator ((,class (:foreground ,type :background ,base00))))
   `(helm-time-zone-current ((,class (:foreground ,builtin :background ,base00))))
   `(helm-time-zone-home ((,class (:foreground ,type :background ,base00))))
   `(helm-buffer-not-saved ((,class (:foreground ,type :background ,base00))))
   `(helm-buffer-process ((,class (:foreground ,builtin :background ,base00))))
   `(helm-buffer-saved-out ((,class (:foreground ,base10 :background ,base00))))
   `(helm-buffer-size ((,class (:foreground ,base10 :background ,base00))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,base00 :weight bold))))
   `(helm-ff-file ((,class (:foreground ,base10 :background ,base00 :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,var :background ,base00 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,warning :background ,base00 :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,base00 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,base00 :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,base10 :background ,base00))))
   `(helm-grep-file ((,class (:foreground ,base10 :background ,base00))))
   `(helm-grep-finish ((,class (:foreground ,base09 :background ,base00))))
   `(helm-grep-lineno ((,class (:foreground ,base10 :background ,base00))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,base00))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,base00))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,type))))
   `(company-echo-common ((,class (:foreground ,base00 :background ,base10))))
   `(company-preview ((,class (:background ,base00 :foreground ,var))))
   `(company-preview-common ((,class (:foreground ,base01 :foreground ,base08))))
   `(company-preview-search ((,class (:foreground ,type :background ,base00))))
   `(company-scrollbar-bg ((,class (:background ,base02))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,base09 :background ,base00 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,base08))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,base02 :foreground ,base08))))
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
   `(jde-java-font-lock-modifier-face ((t (:foreground ,base09))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,var))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'another)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; tmlpp-theme.el ends here
