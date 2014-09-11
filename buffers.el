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


(defun simplified-append-to-buffer (buffer start end)
  "Append to a buffer the text of the selected region"
  (interactive "BAppend to buffer: \nr")

  (let ((old-buffer (current-buffer)))
    (save-excursion
      (set-buffer (get-buffer-create buffer))
      (insert-buffer-substring old-buffer start end)
    )
  )
)


(defun copy-all-to-buffer (buffer)
  "Copy the content of the current buffer to another buffer"
  (interactive "BCopy to buffer:")
  (simplified-append-to-buffer buffer (point-min) (point-max))
)


(defun buffer-exist (buffer)
  "Tells if a buffer exists. The result is output as a message"
  (interactive "BBuffer to check:")
  (if (get-buffer buffer) (message "The buffer %s exists" buffer)  (Message "The buffer %s does not exist" buffer)
   )
)


(defun copy-to-buffer (buffer from start)
  "Replaces the content of buffer with the content of the selected region"
  (interactive "BCopy to buffer: \nr")
  (let ((oldbuffer (current-buffer)))
    (save-excursion
      (set-buffer (get-buffer-create buffer))
      (erase-buffer)
      (save-excursion
        (insert-buffer-substring oldbuffer from start)
        )
      )
   )
)

(defun copy-all-to-buffer (buffer)
  "Replace the content of a buffer with the content of the current buffer"
  (interactive "BCopy to buffer:")
  (let ( (thisbuffer (current-buffer)) 
         (begin (point-min)) 
         (end (point-max))
       )
    (save-excursion
      (set-buffer (get-buffer-create buffer))
      (erase-buffer)
      (save-excursion
        (insert-buffer-substring thisbuffer begin end)
      )
    )
  )
)


(defun insert-buffer (buffer)
  "Insert a buffer content after point"
  (interactive "bInsert from buffer:")
  (let (start end)
    (save-excursion
      (save-excursion
        (set-buffer buffer)
        (setq start (point-min) end (point-max))
      )
      (insert-buffer-substring buffer start end)
    )
  )
)
