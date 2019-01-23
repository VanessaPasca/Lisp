(defun mapsum(l)
(cond
((numberp l) l)
((and (atom l) (not (numberp l))) 0)
(L (apply #'+ (mapcar 'mapsum  l))))) 
