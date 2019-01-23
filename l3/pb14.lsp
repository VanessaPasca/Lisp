(defun counta(l)
(cond
((null l) 0)
((atom l) 1)
(T (apply #'+ (mapcar 'counta l)))))
