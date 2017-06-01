(defun soma (lista)
    (eval (setf lista 
        (if (rem 2 lista) 0
            (cons '+ (remove-if-not #'integerp lista)))))
