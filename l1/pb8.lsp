(defun p8c(l)
(cond
((null l) nil)
((and (listp (car l)) (= (mod (length (car l)) 2) 1)) (cons (car (car l)) (p8c (cdr l))))
(T (p8c (cdr l)))))