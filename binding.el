(let ((a 1)) (message "a = %s" a))

(let ((a 1))
  (let ((a 2))
    (let ((a 3))
      (print a)
      )
    (print a)
    )
  (print a)
  "end"
)
