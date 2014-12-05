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

(defun triangle (number-of-rows)
  (let ((total 0)
        (row-number 1))
    (while (<= row-number number-of-rows)
      (setq total (+ row-number total))
      (setq row-number (1+ row-number))
      )
    total
    )
  )

(triangle 10)

(defun recursive-triangle (number-of-rows)
  (if (eq 1 number-of-rows)
      1
    (+ number-of-rows (recursive-triangle (- number-of-rows 1)))
      )
  )

(recursive-triangle 30)


(defun square-each (list)
  (defun square (n)
    (* n n)
    )

  (if (not list)
      nil
    (cons (square (car list))
          (square-each (cdr list))
          )
      )
  )

(square-each '(1 2 3 4 5 6 7 8 9 10))
