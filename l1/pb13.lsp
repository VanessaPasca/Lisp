(defun p13c(l)
(cond
((null l) nil)
((= (length l) 1) (car l))
((< (car l) (p13c (cdr l))) (car l))
(T (p13c (cdr l)))))