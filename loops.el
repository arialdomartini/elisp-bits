(defun range (from to)
  "Returns a list of the integers from FROM to TO, included"
  (setq alist ())
  (let ((counter to))
    (while (>= counter from)
      (setq alist (cons counter alist ))
      (setq counter (1- counter))
      )
    )
  alist
  )

