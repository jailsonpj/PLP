(defun soma (lista)
    (eval (setf lista (cons '+ (remove-if-not #'integerp lista))))
)
