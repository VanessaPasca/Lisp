(defun pa(l n)
(cond
((null l) nil)
((= n 1) (car l))
(T (pa (cdr l) (- n 1)))))

(defun pc(l)
(cond
((null l) nil)
((atom (car l)) (pc (cdr l)))
((listp (car l)) (cons (car l) (append (pc (car l)) (pc (cdr l)))))))