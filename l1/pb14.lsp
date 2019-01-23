(defun p14a(l1 l2)
(cond
((and (null l1) (null l2)) nil)
((null l1) l2)
((null l2) l1)
(T (cons (car l1) (cons (car l2) (p14a (cdr l1) (cdr l2)))))))