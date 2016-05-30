(defun pascal(c r)
  (if (or (= c 0) (= c r))
      1
    (+ (pascal (- c 1) (- r 1)) (pascal c (- r 1)))
    ))


(assert (eq (pascal  0 0) 1)

(assert (eq (pascal  0 1) 1)
(assert (eq (pascal  1 1) 1)

(assert (eq (pascal  0 2) 1)
(assert (eq (pascal  1 2) 2)
(assert (eq (pascal  2 2) 1)

(assert (eq (pascal  0 3) 1)
(assert (eq (pascal  1 3) 3)
(assert (eq (pascal  2 3) 3)
(assert (eq (pascal  3 3) 1)


(assert (eq (pascal  0 4) 1)
(assert (eq (pascal  1 4) 4)
(assert (eq (pascal  2 4) 6)
(assert (eq (pascal  3 4) 4)
(assert (eq (pascal  4 4) 1)
