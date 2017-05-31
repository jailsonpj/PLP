(defun conta-int (lista)
  (if (null lista)
      0
      (eql (integerp (conta-int (rest lista))) t)
            (t 1+ (conta-int lista))
  )
)

;(defun comprimento (lista)
  ;(if (null lista)
  ;  0
  ;  (1+ (comprimento (rest lista)))))
