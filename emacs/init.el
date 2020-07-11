;; Remove toolbar
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;; Remove menu bar
(menu-bar-mode -1)

;; Mode line settings
(line-number-mode t)
(column-number-mode t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
)

(defvar fff/packages-to-install
  '(
    ; Vim keybindings
    evil
    ; Used to set the escape sequence of insert mode to /jk/
    key-chord
    projectile
    org
    ; Prettier org HTML export
    ox-twbs
    magit
    helm
    ripgrep
    markdown-mode))

(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      fff/packages-to-install)

;; evil
;; This makes the TAB work as TAB when emacs is spawn in a console
(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "C-u")
  (lambda ()
    (interactive)
    (evil-delete (point-at-bol) (point))))
;; unbind RET in evil to allow RET to follow links in org-mode
(with-eval-after-load 'evil-maps (define-key evil-motion-state-map (kbd "RET") nil))
;; set escape sequence to jk
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; org
(setq org-agenda-files '("~/repos/notes"))
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-return-follows-link t)
;; So clockdowns are remembered through open and closing emacs
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Add plantuml to babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)))
(setq org-plantuml-jar-path
      (expand-file-name "~/plantuml.jar"))
(defun fff/org-confirm-babel-evaluate (lang body)
  (not (string= lang "plantuml")))
(setq org-confirm-babel-evaluate 'fff/org-confirm-babel-evaluate)

;; Quick movements through an org tree
(setq org-goto-auto-isearch nil)

;; Export to ./org_export_results
(defun fff/org-export-output-file-name (orig-fun extension &optional subtreep pub-dir)
  (unless pub-dir
    (setq pub-dir "./org_export_results")
    (unless (file-directory-p pub-dir)
      (make-directory pub-dir)))
  (apply orig-fun extension subtreep pub-dir nil))
(advice-add 'org-export-output-file-name :around #'fff/org-export-output-file-name)

(global-set-key (kbd "C-x g") 'magit-status)

;; helm
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-mode-fuzzy-match t)
(setq helm-completion-in-region-fuzzy-match t)


;; so Alt + q fits text into 80 columns
(setq-default fill-column 80)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode ripgrep rg projectile ox-twbs org-ref magit json-mode evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
