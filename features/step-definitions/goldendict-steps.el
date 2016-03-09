;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I bind key \"\\([^\"]+\\)\" to \"\\([^\"]+\\)\"$"
  (lambda (key fn-name)
    (global-set-key (kbd key) (intern fn-name))))

(Then "^Emacs should run \"\\(.+\\)\"$"
"Asserts that emacs just executed the given command with `shell-command`."
  (lambda (command)

;;    (cl-assert (car (command-history-mode-map)))

    ;; ...
    ))


(Then "^I should be in file \"\\(.+\\)\"$"
  "Asserts that the current buffer is connected to FILE."
  (lambda (file)
    (let ((file-name (buffer-file-name)))
      (if file-name
          (let ((match (equal file (file-name-nondirectory file-name))))
            (cl-assert match nil "Expected file to be '%s', but was '%s'." file file-name))
        (cl-assert file-name nil "Expected file to be '%s', but not visiting any file." file)))))
