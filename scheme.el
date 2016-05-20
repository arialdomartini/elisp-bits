(defun rember (a lat)
  (cond
   ((eq lat ()) ())
   ((eq a (car lat)) (cdr lat))
   (t (cons (car lat) (rember a (cdr lat))))
   )
  )
(rember 2 '(1 2 3))




(defun firsts (lat)
  (cond
   ((eq lat ()) ())
   (t (cons
       (list (car (car lat)))
       (firsts(cdr lat))))
   )
  )

(firsts '(
          (1 2 3)
          (5 6 7)
          (8 9 10)
          )
        )
