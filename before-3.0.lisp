;; ;; search engine

;; (defvar *my-search-engines*
;;   (list
;;    '("google" "https://www.google.com/search?q=~a" "https://www.google.com/")
;;    '("wiki" "https://en.wikipedia.org/w/index.php?search=~a" "https://en.wikipedia.org/")))

;; (define-configuration buffer
;;   ((search-engines (append (mapcar (lambda (engine) (apply 'make-search-engine engine))
;;                                    *my-search-engines*)
;;                            %slot-default%))))

;; ;; keybindings: small emacs experience in CUA (default mode) of Nyxt

;; (define-configuration buffer
;;   ((override-map (let ((map (make-keymap "override-map")))
;;                    (define-key map
;;                       ;"C-space" 'noop
;;                       "M-x" 'execute-command
;;                       "C-n" 'nyxt/web-mode:scroll-down
;;                       "C-p" 'nyxt/web-mode:scroll-up
;;                       "C-f" 'nyxt/web-mode:scroll-right
;;                       "C-b" 'nyxt/web-mode:scroll-left
;;                       "C-g" 'query-selection-in-search-engine
;;                       "M-s->" 'nyxt/web-mode:scroll-to-bottom
;;                       "M-s-<" 'nyxt/web-mode:scroll-to-top
;;                       "C-s" 'nyxt/web-mode:search-buffer
;;                       "M-w" 'nyxt/web-mode:copy
;;                       "C-y" 'nyxt/web-mode:paste
;;                       "C-Y" 'nyxt/web-mode:paste-from-clipboard-ring
;;                       "C-x C-b" 'switch-buffer)))))

;; ;;define-configuration does not work anymore!
;; (define-configuration (prompt-buffer)
;;     ((default-modes (append '(emacs-mode) %slot-default%))
;;      (hide-suggestion-count-p t)))

;; ;; (define-configuration bookmark-frequent-visits-mode
;; ;;   ((threshold 10)))
