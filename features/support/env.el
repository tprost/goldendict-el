(require 'f)

(defvar goldendict-support-path
  (f-dirname load-file-name))

(defvar goldendict-features-path
  (f-parent goldendict-support-path))

(defvar goldendict-root-path
  (f-parent goldendict-features-path))

(add-to-list 'load-path goldendict-root-path)

(require 'goldendict)
(require 'espuds)
(require 'ert)

(Setup
 ;; Before anything has run
 )

(Before
 ;; Before each scenario is run
 )

(After
 ;; After each scenario is run
 )

(Teardown
 ;; After when everything has been run
 )
