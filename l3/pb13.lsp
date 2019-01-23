(defun depth1(l)
(cond
((atom l) 0)
(T (+ 1 (apply #'max (mapcar 'depth1 l))))))