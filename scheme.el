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

(firsts '(
          ((1 2) 3 4)
          ((10 20) 30 40)
          (9 10)
          ))


(defun double (lat)
  (cond
   ((eq lat ()) ())
   (t (cons
       (* 2 (car lat))
       (double (cdr lat))))))

(double '(1 2 3 4))




(defun doublen (n)
  (* 2 n))

(doublen 12)



(defun call-d ()
  (funcall 'doublen 10))

(call-d )

; recur is like map: it's a higher function that applies a function to a list
(defun recur (f lat)
  (cond
   ((eq lat ()) ())
   (t (cons
       (funcall f (car lat))
       (recur f (cdr lat))))
   )
  )

(recur (lambda (x) (doublen x)) '(1 2 3 4))
(recur 'doublen '(1 2 3 4))


(defun sum (lat)
  (cond
   ((eq lat ()) 0)
   (t (+ (car lat) (sum (cdr lat))))
   )
  )


(sum '(1 2 3 4 5))


(defun maxl (lat)
  (cond
   ((eq (cdr lat) ()) (car lat))
   (t (max (car lat) (maxl (cdr lat))))
   )
  )

(maxl '(1 2 3 4 5 6 5))
