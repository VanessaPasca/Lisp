
(defun produ(l)
(cond
	((null l) 1)
	((AND (numberp (car l)) (= (mod (car l) 2) 0)) (* (car l) (prod (cdr l) )))
	((AND (numberp (car l)) (= (mod (car l) 2) 1)) (prod (cdr l) ))
	((listp (car l)) (* (prod (car l)) (prod (cdr l))))
)
)

(defun p(l)
(set 'rez (produ l))
(cond
   ((= rez 1) (return-from p 0))
   (T (return-from p rez))
))