(defun subs(l c)
(cond
((null l) nil)
((< (- (car l) c) 0) (cons (+ (- (car l) c) 10) (subs (cdr l) 1)))
(T (cons (- (car l) c) (subs (cdr l) 0)))))

(defun p7c(l)
 (reverse (subs (reverse l) 1)))
