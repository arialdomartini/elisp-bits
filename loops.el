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


(defun every (list function )
  (if (not list)
      nil
    (cons (funcall function (car list))
          (every (cdr list) function)
          )
    )
  )

(defun square (n)
  (* n n)
  )

(defun plus1 (n)
  (1+ n)
  )

(every '(1 2 3 4 5 6) 'square)
(every '(1 2 3 4 5 6) 'plus1)



(defun filterpositive (list)
  (if (not list)
      nil
    (if (> (car list) 0)
        (cons (car list) (filterpositive (cdr list)))
      (filterpositive (cdr list))
        )
      )
  )

(filterpositive '(1 2 -3 4 -5 6))


(defun keep (function list)
  (if (not list)
      nil
    (if (funcall function (car list))
        (cons (car list) (keep function (cdr list)))
      (keep function (cdr list))
        )
      )
  )

(defun ispositive (n)
  (> n 0)
  )

(keep 'ispositive '(1 2 -3 4 -5 6))


(defun triangle-initialization (number)
  (triangle-recursive-helper 0 0 number))

(defun triangle-recursive-helper (sum counter number)
  (if (> counter number)
      sum
    (triangle-recursive-helper (+ sum counter) (+ counter 1) number)
      )
  )

(triangle-initialization 3)
