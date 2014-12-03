(defun print-elements-of-a-list (list)
  "Print each elements of a list on a line of its own"
  (while list
    (print (car list))
    (setq list (cdr list))
    )
  )


(print-elements-of-a-list '(one "two" three)) 


(defun get-last-element (list)
  (if (eq (cdr list) nil)
      (car list)
    (get-last-element (cdr list))
    )
  )

(get-last-element '(a b c d e f ))

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



