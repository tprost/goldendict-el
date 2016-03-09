(defun goldendict-popup (region-beginning region-end)
  "query goldendict popup thing"
  (interactive "r")
  (if (use-region-p)
      (shell-command
       (concat "goldendict " (buffer-substring region-beginning region-end)))
    (interactive))
  (message "region not active"))

(provide 'goldendict)
