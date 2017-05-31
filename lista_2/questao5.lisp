(defun my-reverse (lista)
  (my-revappend lista ())
)
(defun my-revappend (lista1 lista2)
  (if (null lista1)
      lista2
      (my-revappend (cdr lista1) (cons (car lista1) lista2))
  )
)
