(defun pb6(l)
(cond
((numberp l) l)
((atom l) 0)
(t (apply #'max (mapcar 'pb6 l)))))