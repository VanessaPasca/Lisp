(defun depth(l)
(cond
((null l) 0)
((atom (car l)) (+ 1 (depth (cdr l))))
((listp (car l)) (+ 1 (depth (cdr l))))))

(defun check(l)
(cond
((null l) t)
((atom (car l)) (check (cdr l)))
((and (listp (car l)) (= (- (depth (car l)) (depth (car (cdr l)))) 1)) (and (check (car l)) (check (car (cdr l)))))
(T nil))) 