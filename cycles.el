(defun print-elements-of-a-list (list)
  "Print each elements of a list on a line of its own"
  (while list
    (print (car list))
    (setq list (cdr list))
    )
  )


(print-elements-of-a-list '(one "two" three)) 
