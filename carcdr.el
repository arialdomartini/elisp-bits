(let ((list '(one two three four)))
  (let ((head (car list)) (tail (cdr list)))
    (cons head tail)
  )
)


(cdr '(one two three four))

(cons (car '(one two three four)) (cdr '(one two three four)))


(first '(1 2 3 4 5))
(rest  '(1 2 3 4 5))


(car '((1 2 3) ("a" "b" "c") (1.1 2.2 3.3)))
(cdr '((1 2 3) ("a" "b" "c") (1.1 2.2 3.3)))

(car '(
       (lion tiger cheetah)
       (gazelle antelope zebra)
       (whale dolphin seal)
       ))


(length (cons '"a" '("b" "c")))

(defun listlen (list)
  (if (cdr list)
      (+ 1 (listlen (cdr list)))
      1
      )
)
(listlen '(1 2 3 4))


(defun mynthcdr (n list)
  (if (= 0 n)
      list
    (mynthcdr (- n 1) (cdr list) )
      )
)





(mynthcdr 3 '(1 2 3 4 5 6))
(nthcdr   3 '(1 2 3 4 5 6))


(if 
    (eq nil ()) 
    (message "Equal") 
  (message "not equal")
)
