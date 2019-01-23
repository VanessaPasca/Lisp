(defun pb(l)
(cond
((null l) nil)
((atom (car l)) (cons (car l) (pb (cdr l))))
(T (cons (pb (cdr l)) (pb (car l)) ))))