(defun countk(l)
(cond
((null l) 0)
((atom l) 0)
((atom (car l)) (countk (cdr l)))
(T (+ 1 (countk (cdr l))))))

(defun countkids(l level)
(cond 
((and (atom l) (= level 1)) 1)
((atom l) 0)
(t (apply #'+ (mapcar #'(lambda(x) (countkids x (+ 1 level))) l)))))

(defun pb11(l)
(cond
((atom l) 0)
(T (apply #'max (maplist 'countk l))))) 