;;; simple-fly-keys.el -- This mode like xah-fly-keys, but no custom help functions.

(defvar simple-fly-insert-state-p t)
(defvar simple-fly-key-map (make-sparse-keymap))
(defvar simple-fly-insert-mode-activate-hook nil "Hook for insert mode.")
(defvar simple-fly-command-mode-activate-hook nil "Hook for command mode.")

(defun sf-create-keymap (name)
  "Create a prefix keymap.
example: (sf-create-keymap 'simple-fly-x-map)"
  (interactive)
  (define-prefix-command name))

(progn
  (setq simple-fly-insert-state-p t)
  (define-key global-map (kbd "<home>") 'simple-fly-command-mode-activate)
  (sf-create-keymap 'simple-fly-a-map)
  (sf-create-keymap 'simple-fly-b-map)
  (sf-create-keymap 'simple-fly-c-map)
  (sf-create-keymap 'simple-fly-d-map)
  (sf-create-keymap 'simple-fly-e-map)
  (sf-create-keymap 'simple-fly-f-map)
  (sf-create-keymap 'simple-fly-g-map)
  (sf-create-keymap 'simple-fly-h-map)
  (sf-create-keymap 'simple-fly-i-map)
  (sf-create-keymap 'simple-fly-j-map)
  (sf-create-keymap 'simple-fly-k-map)
  (sf-create-keymap 'simple-fly-l-map)
  (sf-create-keymap 'simple-fly-m-map)
  (sf-create-keymap 'simple-fly-n-map)
  (sf-create-keymap 'simple-fly-o-map)
  (sf-create-keymap 'simple-fly-p-map)
  (sf-create-keymap 'simple-fly-q-map)
  (sf-create-keymap 'simple-fly-r-map)
  (sf-create-keymap 'simple-fly-s-map)
  (sf-create-keymap 'simple-fly-t-map)
  (sf-create-keymap 'simple-fly-u-map)
  (sf-create-keymap 'simple-fly-v-map)
  (sf-create-keymap 'simple-fly-w-map)
  (sf-create-keymap 'simple-fly-x-map)
  (sf-create-keymap 'simple-fly-y-map)
  (sf-create-keymap 'simple-fly-z-map)
  (sf-create-keymap 'simple-fly-0-map)
  (sf-create-keymap 'simple-fly-1-map)
  (sf-create-keymap 'simple-fly-2-map)
  (sf-create-keymap 'simple-fly-3-map)
  (sf-create-keymap 'simple-fly-4-map)
  (sf-create-keymap 'simple-fly-5-map)
  (sf-create-keymap 'simple-fly-6-map)
  (sf-create-keymap 'simple-fly-7-map)
  (sf-create-keymap 'simple-fly-8-map)
  (sf-create-keymap 'simple-fly-9-map)
  (sf-create-keymap 'simple-fly-spc-map)
  (sf-create-keymap 'simple-fly-\,-map)
  (sf-create-keymap 'simple-fly-\.-map)
  (sf-create-keymap 'simple-fly-\/-map)
  (sf-create-keymap 'simple-fly-\;-map)
  (sf-create-keymap 'simple-fly-\'-map)
  (sf-create-keymap 'simple-fly-\\-map)
  (sf-create-keymap 'simple-fly-\[-map)
  (sf-create-keymap 'simple-fly-\]-map)
  (sf-create-keymap 'simple-fly-\--map)
  (sf-create-keymap 'simple-fly-\+-map)
  )


(defun simple-fly-define-keys (keymap-name key-cmd-alist)
  (interactive)
  (mapc
   (lambda (pair)
	 (define-key keymap-name (kbd (car pair)) (cdr pair)))
   key-cmd-alist))


(defun simple-fly-insert-mode-init ()
  "Set all key to nil, then it will be self-insert-command."
  (simple-fly-define-keys
   simple-fly-key-map
   '(("a" . nil) ("b" . nil) ("c" . nil)	("d" . nil)	("e" . nil)	("f" . nil)	("g" . nil)
	 ("h" . nil) ("i" . nil) ("j" . nil)	("k" . nil)	("l" . nil)	("m" . nil)	("n" . nil)
	 ("o" . nil) ("p" . nil) ("q" . nil)	("r" . nil)	("s" . nil)	("t" . nil)	("u" . nil)
	 ("v" . nil) ("w" . nil) ("x" . nil)	("y" . nil)	("z" . nil)	("0" . nil)	("1" . nil)
	 ("2" . nil) ("3" . nil) ("4" . nil)	("5" . nil) ("6" . nil) ("7" . nil)	("8" . nil)
	 ("9" . nil) ("`" . nil) ("~" . nil)	("!" . nil)	("@" . nil)	("#" . nil)	("$" . nil)
	 ("%" . nil) ("^" . nil) ("&" . nil) 	("*" . nil)	("(" . nil)	(")" . nil)	("-" . nil)
	 ("_" . nil) ("=" . nil) ("+" . nil) 	("[" . nil)	("{" . nil)	("]" . nil)	("}" . nil)
	 (";" . nil) (":" . nil) ("'" . nil)	("\"" . nil)("\\" . nil)("|" . nil)	("," . nil)
	 ("<" . nil) ("." . nil) (">" . nil)	("/" . nil)	("?" . nil)
	 )))

(simple-fly-define-keys
 simple-fly-d-map
 '((";" . kill-line)
   ("d" . (lambda () (interactive) (beginning-of-line) (kill-line)))
   ("u" . backward-kill-word)
   ("o" . kill-word)
   ))

(simple-fly-define-keys
 simple-fly-e-map
 '(("f" . find-file)
   ("h" . recentf-open-files)
   ("k" . kill-buffer)
   ("s" . save-buffer)
   ("o" . find-file-other-window)
   ))

(simple-fly-define-keys
 simple-fly-v-map
 '(("v" . yank)
   ("p" . yank-pop)
   ))

(simple-fly-define-keys
 simple-fly-s-map
 '(("f" . save-buffer)
   ("s" . occur)
   ("b" . multi-occur-in-matching-buffers)
   ))

(defun simple-fly-command-mode-init ()
  (simple-fly-define-keys
   simple-fly-key-map
   '(("a" . execute-extended-command)
	 ("b" . simple-fly-b-map)
	 ("c" . kill-ring-save)
	 ("d" . simple-fly-d-map)
	 ("e" . simple-fly-e-map)
	 ("f" . simple-fly-insert-mode-activate)
	 ("g" . goto-line)
	 ("h" . beginning-of-line)
	 ("i" . previous-line)
	 ("j" . left-char)
	 ("k" . next-line)
	 ("l" . right-char)
	 ("m" . set-mark-command)
	 ("n" . scroll-up-command)
	 ("o" . forward-word)
	 ("p" . scroll-down-command)
	 ("q" . nil) ;; This key is for quit some buffer in emacs.
	 ("r" . query-replace)
	 ("s" . simple-fly-s-map)
	 ("t" . simple-fly-t-map)
	 ("u" . backward-word)
	 ("v" . simple-fly-v-map)
	 ("w" . other-window)
	 ("x" . kill-region)
	 ("y" . undo)
	 ("z" . suspend-emacs) ;; use `fg' to resume
	 ("0" . simple-fly-0-map)
	 ("1" . delete-other-windows)
	 ("2" . switch-to-buffer)
	 ("3" . split-window-right)
	 ("4" . split-window-below)
	 ("5" . delete-char)
	 ("6" . simple-fly-6-map)
	 ("7" . simple-fly-7-map)
	 ("8" . isearch-backward)
	 ("9" . isearch-forward)
	 (";" . end-of-line)
	 ("[" . beginning-of-buffer)
	 ("]" . end-of-buffer)
	 ("," . simple-fly-\,-map)
	 ("/" . hippie-expand)
	 )))
 


(defun simple-fly-insert-mode-activate ()
  (interactive)
  (simple-fly-insert-mode-init)
  (run-hooks 'simple-fly-insert-mode-activate-hook)
  (setq simple-fly-insert-state-p t)
  (force-mode-line-update))


(defun simple-fly-command-mode-activate ()
  (interactive)
  (simple-fly-command-mode-init)
  (run-hooks 'simple-fly-command-mode-activate-hook)
  (setq simple-fly-insert-state-p nil)
  (force-mode-line-update))


(defun simple-fly-mode-toggle ()
  "Switch between insert/command modes."
  (interactive)
  (if simple-fly-insert-state-p
	  (simple-fly-command-mode-activate)
	(simple-fly-insert-mode-activate)))


(define-minor-mode simple-fly-keys
  "A modal mode, like xah-fly-keys, but no custom help functions."
  t "SFK" simple-fly-key-map
  (progn
	(add-hook 'minibuffer-setup-hook 'simple-fly-insert-mode-activate)
	(add-hook 'minibuffer-exit-hook 'simple-fly-command-mode-activate)
	(simple-fly-command-mode-activate)
	))

(defun simple-fly-keys-off ()
  (interactive)
  (remove-hook 'minibuffer-setup-hook 'simple-fly-insert-mode-activate)
  (remove-hook 'minibuffer-exit-hook 'simple-fly-command-mode-activate)
  (simple-fly-insert-mode-activate)
  (simple-fly-keys 0))


(provide 'simple-fly-keys)

;;; simple-fly-keys.el ends here


