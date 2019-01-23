(defun ff(l) 
(cond
((null l) l)
((atom l) (list l))
(t (mapcan #'f l))))