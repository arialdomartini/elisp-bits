


(defun adder (n)
  (setq lexical-binding t)
  (lambda (x) (+ x n))
)


(defun adder10 (x)
     (funcall (adder 10) x)
)

(adder10 100)
