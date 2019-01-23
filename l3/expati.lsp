(defun pati(l)
(cond ((and (numberp l) (= (mod l 2) 0)) (+ 1 l))
((atom l) l)
(T (mapcar 'pati l))))

(defun pati2(l)
(cond
((null l) nil)
((and (numberp (car l)) (= (mod (car l) 2) 0)) (cons (+ 1 (car l)) (pati2 (cdr l))))
((atom (car l)) (cons (car l) (pati2 (cdr l))))
(T (cons (pati2 (car l)) (pati2 (cdr l))))))