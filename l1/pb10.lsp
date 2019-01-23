(defun cc(l e)
(cond
((null l) 0)
((equal (car l) e) (+ 1 (cc (cdr l) e)))
(T (cc (cdr l) e))))

(defun p10d(l)
(cond
((null l) nil)
(T (cons (list (car l) (cc l (car l))) (p10d (delete (car l) l))))))