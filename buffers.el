(defun simplified-beginning-of-buffer ()
  "Move the point to the beginning of buffer"
  (interactive)
  (push-mark)
  (goto-char (point-min))
)
