(defun p6b(l e o)
(cond
((null l) nil)
((and (atom (car l)) (= (car l) e)) (cons o (cdr l)))
(T (cons (car l) (p6b (cdr l) e o)))))


(defun linear(l)
(cond
((null l) nil)
((atom (car l)) (cons (car l) (linear (cdr l))))
(T (append (linear (car l)) (linear (cdr l))))))
(defun getLast(l)
(cond
((null l) nil)
((= (length l) 1 ) (car l))
(T (getLast (cdr l)))
))
(defun p6c(l)
(cond
((null l) nil)
((atom (car l)) (cons (car l) (p6c (cdr l))))
(T (cons (getlast (linear (car l) )) (p6c (cdr l)))))) 


(defun p6d(l1 l2)
(cond
((and (null l1) (null l2)) nil)
((and (null l1)) l2)
((and (null l2)) l1)
((> (car l1) (car l2)) (cons (car l2) (p6d l1 (cdr l2))))
(T (cons (car l1) (p6d (cdr l1) l2)))))