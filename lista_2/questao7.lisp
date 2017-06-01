(enigma '(nil nil nil)) ;; Retorna T
(enigma '(0 1 2 3)) ;; Retorna nil

;; Somente com valores 'nil' o retorno sera True (T),
;; em qualquer outro caso o retorno sera NULL (nil)

(defun enigma (x)
    (and (not (null x)) (or (null (car x)) (enigma (cdr x)))))

