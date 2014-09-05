(defun move-somewhere-pushing-mark (which-point)
  (push-mark)
  (goto-char (funcall which-point))
)

(defun simplified-beginning-of-buffer ()
  "Move the point to the beginning of buffer"
  (interactive)
  (move-somewhere-pushing-mark 'point-min)
)

(defun simplified-end-of-buffer ()
  "Move the point to the last character of the buffer"
  (interactive)
  (move-somewhere-pushing-mark 'point-max)
)

(defun simplified-mark-whole-buffer ()
  "Put the point at the beginning and the mark at the end of buffer."
  (interactive)
  (push-mark (point) nil t)
  (push-mark (point-max) nil t)
  (goto-char (point-min))
)

