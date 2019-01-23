(defun klevel(x k level)
(cond
((and (atom x) (= level k)) 1)
((and (atom x) (/= level k)) 0)
(T (apply #'+ (mapcar #'(lambda (x)
                          (klevel x k (+ 1 level))) x)))))