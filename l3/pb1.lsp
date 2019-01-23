(defun checkm(a l)
(cond((and (atom l) (equal l a)) 1)
((and (atom l) (not (equal l a))) 0)
(T (apply '+ (mapcar #'(lambda(x) (checkm a x)) l)))))

(defun decide(a l)
(set 'r (checkm a l))
(cond
((= r 1) 'Apartine)
(T (print "Nu apartine"))
))