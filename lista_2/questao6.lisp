(defun media_ele (lista)
    (/ (comprimento lista) 2)
)


(defun comprimento (lista)
  (if (null lista)
    0
    (1+ (comprimento (rest lista))))
)
