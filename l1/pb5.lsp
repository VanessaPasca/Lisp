(defun p5b(l1 l2)
(cond
((or (null l1) (null l2)) nil)
(T (cons (list (car l1) (car l2)) (p5b (cdr l1) (cdr l2))))))