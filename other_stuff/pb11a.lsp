(defun gcdd(a b)
(cond
	((= (* a b) 0) (+ a b))
	((> a b) (gcdd (- a b) b))
	((< a b) (gcdd a (- b a)))
	(T a)
)
)

(defun lung(l)
(cond ((null l) 0)
      (T (+ 1 ( lung (cdr l))))
)
)

(defun lcmnr(a b)
 (/ (* a b) (gcd a b))
)

(defun lcmm(l)
(cond
         ((and (= (lung l) 1) (listp (car l))) (lcmm (car l)))
        ((listp (car l)) (lcmnr (lcmm (car l)) (lcmm (cdr l))))
        
	((null l) 0)
        ((= (lung l) 1) (car l))
        ; daca lungimea listei e 2, aplicam formula de lcm pe cele doua numere: a*b/gcd(a,b)
	((= (lung l) 2) (lcmnr (car l) (cadr l)))
	(T (lcmnr (car l) (lcmm (cdr l))))   ;altfel acceasi formula pe capul listei si apelul recursiv
)
)

