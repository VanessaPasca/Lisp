(defun p15c(l)
(cond
((null l) nil)
((listp (car l)) (cons (car l) (append (p15c (car l)) (p15c (cdr l)))))  ;append neaparat
(T (p15c (cdr l)))))