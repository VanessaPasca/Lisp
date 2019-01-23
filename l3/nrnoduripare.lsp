(defun pare(l n)
(cond 
((and (atom l) (= (mod n 2) 0)) 1 )
((and (atom l) (= (mod n 2) 1))  0)
(T (apply #'+ (mapcar #'(lambda (x) (pare x (+ 1 n))) l)))))