(defun print-elements-of-a-list (list)
  "Print each elements of a list on a line of its own"
  (while list
    (print (car list))
    (setq list (cdr list))
    )
  )


(defun print-elements-of-a-list (list)
  "Print each elements of a list on a line of its own"
  (while list
    (print (car list))
    (setq list (cdr list))
    )
  )



(defun get-last-element (list)
  (if (eq (cdr list) nil)
      (car list)
    (get-last-element (cdr list))
    )
  )

(get-last-element '(a b c d e f ))


(defun is-empty(list)
  (eq list nil)
  )

(is-empty ())
(is-empty '(a b c))


 
(is-empty '())


(defun second-element (list)
  (car (cdr list))
  )

(second-element ())
(second-element '(a))
(second-element '(a b))
(second-element '(a b c))
(second-element '(a b c d ))


(defun first-element (list)
  (car list)
  )

(first-element '(a))
(first-element '(a b))
(first-element '(a b c))
(first-element '(a b c d ))



(defun invert-two-elements (list)
  (cons (cdr list) (list (car list)))
  )

(invert-two-elements '(a b))
(invert-two-elements '(a b c))


(defun has-only-one-element (list)
  (and
   (eq (cdr list) nil)
   (not (eq (car list) nil))
   
   )
  )

(defun has-no-more-than-one-element (list)
   (eq (cdr list) nil)
  )


(defun invert(list)
  (if (has-no-more-than-one-element list)
      (car list)
    (list (invert (cdr list)) (car list))
    )
  )

(invert '(1 2 3 4 5))

(let (( lista '(1 2 3 4 5) ))
  (setq first (car lista))
  (setq rest (cdr lista))
  (list lista first)
     )


(invert '(a b))


(defun print-something-in-a-new-buffer (buffer something)
  (let ((oldbuffer (current-buffer)))
    (save-excursion
      (get-buffer-create buffer)
      (set-buffer buffer)
      (insert "ciao")
      (set-buffer oldbuffer)
      (message "Created a buffer names %s" buffer)
      )
    )
  )


(print-something-in-a-new-buffer "another-buffer" "write me")



