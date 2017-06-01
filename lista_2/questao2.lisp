(defun soma (lista)
    (eval (setf lista (cons '+ (remove-if-not (lambda (x) (evenp x)) lista))))
)
