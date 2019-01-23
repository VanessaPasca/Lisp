(defun prod(l)
(cond
((numberp l) l)
((atom l) 1)
(T (apply #'* (mapcar 'prod l)))))