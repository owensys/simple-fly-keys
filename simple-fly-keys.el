;;; simple-fly-keys.el -- This mode like xah-fly-keys, but no custom help functions.

(defvar simple-fly-insert-state-p t)
(defvar simple-fly-key-map (make-sparse-keymap))

(defun simple-fly-create-prefix-keymap (name)
  "Create a prefix keymap.
example: (simple-fly-create-prefix-keymap 'simple-fly-x-map)"
  (interactive)
  (define-prefix-command name))

(progn
  (setq simple-fly-insert-state-p t)
  (define-key global-map (kbd "<home>") 'simple-fly-command-mode-activate)
  (simple-fly-create-prefix-keymap 'simple-fly-a-map)
  (simple-fly-create-prefix-keymap 'simple-fly-b-map)
  (simple-fly-create-prefix-keymap 'simple-fly-c-map)
  (simple-fly-create-prefix-keymap 'simple-fly-d-map)
  (simple-fly-create-prefix-keymap 'simple-fly-e-map)
  (simple-fly-create-prefix-keymap 'simple-fly-f-map)
  (simple-fly-create-prefix-keymap 'simple-fly-g-map)
  (simple-fly-create-prefix-keymap 'simple-fly-h-map)
  (simple-fly-create-prefix-keymap 'simple-fly-i-map)
  (simple-fly-create-prefix-keymap 'simple-fly-j-map)
  (simple-fly-create-prefix-keymap 'simple-fly-k-map)
  (simple-fly-create-prefix-keymap 'simple-fly-l-map)
  (simple-fly-create-prefix-keymap 'simple-fly-m-map)
  (simple-fly-create-prefix-keymap 'simple-fly-n-map)
  (simple-fly-create-prefix-keymap 'simple-fly-o-map)
  (simple-fly-create-prefix-keymap 'simple-fly-p-map)
  (simple-fly-create-prefix-keymap 'simple-fly-q-map)
  (simple-fly-create-prefix-keymap 'simple-fly-r-map)
  (simple-fly-create-prefix-keymap 'simple-fly-s-map)
  (simple-fly-create-prefix-keymap 'simple-fly-t-map)
  (simple-fly-create-prefix-keymap 'simple-fly-u-map)
  (simple-fly-create-prefix-keymap 'simple-fly-v-map)
  (simple-fly-create-prefix-keymap 'simple-fly-w-map)
  (simple-fly-create-prefix-keymap 'simple-fly-x-map)
  (simple-fly-create-prefix-keymap 'simple-fly-y-map)
  (simple-fly-create-prefix-keymap 'simple-fly-z-map)
  (simple-fly-create-prefix-keymap 'simple-fly-0-map)
  (simple-fly-create-prefix-keymap 'simple-fly-1-map)
  (simple-fly-create-prefix-keymap 'simple-fly-2-map)
  (simple-fly-create-prefix-keymap 'simple-fly-3-map)
  (simple-fly-create-prefix-keymap 'simple-fly-4-map)
  (simple-fly-create-prefix-keymap 'simple-fly-5-map)
  (simple-fly-create-prefix-keymap 'simple-fly-6-map)
  (simple-fly-create-prefix-keymap 'simple-fly-7-map)
  (simple-fly-create-prefix-keymap 'simple-fly-8-map)
  (simple-fly-create-prefix-keymap 'simple-fly-9-map)
  (simple-fly-create-prefix-keymap 'simple-fly-spc-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\,-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\.-map)
  (simple-fly-create-prefix-keymap 'simple-fly-/-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\;-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\'-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\\-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\[-map)
  (simple-fly-create-prefix-keymap 'simple-fly-\]-map)
  (simple-fly-create-prefix-keymap 'simple-fly---map)
  (simple-fly-create-prefix-keymap 'simple-fly-+-map)
  )


(defun simple-fly-define-keys (keymap-name key-cmd-alist)
  (interactive)
  (mapc
   (lambda (pair)
	 (define-key keymap-name (kbd (car pair)) (cdr pair)))
   key-cmd-alist))



(defun simple-fly-command-mode-init ()
  (simple-fly-define-keys simple-fly-key-map
						  '("a" . find-file)))


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

(defun simple-fly-command-mode-init ()
  (simple-fly-define-keys
   simple-fly-key-map
   '(("a" . execute-extended-command)
	 ("b" . switch-to-buffer)
	 ("c" . kill-ring-save)
	 ("d" . simple-fly-d-map)
	 ("e" . simple-fly-insert-mode-activate)
	 ("f" . find-file)
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
	 ("q" . (lambda () (interactive) (simple-fly-insert-mode-activate) (call-interactively 'query-replace)))
	 ("r" . revert-buffer)
	 ("s" . save-buffer)
	 ("t" . nil)
	 ("u" . backward-word)
	 ("v" . yank)
	 ("w" . other-window)
	 ("x" . kill-region)
	 ("y" . undo)
	 ("z" . suspend-emacs)	
	 ("0" . nil)	
	 ("1" . delete-other-windows)
	 ("2" . nil)
	 ("3" . split-window-right)
	 ("4" . split-window-below)
	 ("5" . nil)
	 ("6" . nil)
	 ("7" . nil)
	 ("8" . isearch-backward)
	 ("9" . isearch-forward)
	 (";" . end-of-line)
	 ("[" . beginning-of-buffer)
	 ("]" . end-of-buffer)
	 ))
  )
 


(defun simple-fly-insert-mode-activate ()
  (interactive)
  (simple-fly-insert-mode-init)
  (run-hooks 'simple-fly-insert-mode-activate-hook)
  (setq simple-fly-insert-state-p t)
  (message "insert mode activate"))


(defun simple-fly-command-mode-activate ()
  (interactive)
  (simple-fly-command-mode-init)
  (run-hooks 'simple-fly-command-mode-activate-hook)
  (setq simple-fly-insert-state-p nil)
  (message "command mode activate"))


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


