(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; evil
(unless (package-installed-p 'evil) (package-install 'evil))
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

;; projectile
(unless (package-installed-p 'projectile) (package-install 'projectile))
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; org
(unless (package-installed-p 'org) (package-install 'org))
(setq org-agenda-files '("~/repos/notes"))
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-return-follows-link t)
;; So clockdowns are remembered through open and closing emacs
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(unless (package-installed-p 'json-mode) (package-install 'json-mode))
(unless (package-installed-p 'key-chord) (package-install 'key-chord))
(key-chord-mode 1)
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)

;; so Alt + q fits text into 80 columns
(setq-default fill-column 80)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("/home/ferch/repos/notes/scratchpad.org" "/home/ferch/repos/notes/arch.org")))
 '(package-selected-packages (quote (key-chord json-mode evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
