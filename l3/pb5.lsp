(defun pb5(l)
(cond
((and (numberp l) (= (mod l 2) 0)) l)
((and (numberp l) (= (mod l 2) 1)) (* -1 l))
((atom l) 0)
(T (apply #'+ (mapcar 'pb5 l)))
)
)