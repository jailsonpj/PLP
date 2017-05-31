
(defun comp (m n)
    (/ (fatorial m) (* (fatorial n) (fatorial(- m n))))
)

(defun fatorial (n)
  (if (= n 0)
    1
    (* n (fatorial (1- n)))
    )
)
