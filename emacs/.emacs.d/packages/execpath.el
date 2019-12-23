(if (eq system-type 'darwin)
  (use-package exec-path-from-shell
    :ensure t
    :if (memq window-system '(mac ns x))
    :config
    (setq exec-path-from-shell-check-startup-files nil)
    (exec-path-from-shell-copy-env "PATH")
    (exec-path-from-shell-copy-env "LANG")
    (exec-path-from-shell-copy-env "MAKEFLAGS")
    (exec-path-from-shell-initialize)))
