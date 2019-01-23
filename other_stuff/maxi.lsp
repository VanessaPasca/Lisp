(defun maxim(m l)
	(cond	
		((null (car l)) m)
		((> (car l) m) (maximum (car l) (cdr l)))
		(t (maximum m (cdr l))))
)