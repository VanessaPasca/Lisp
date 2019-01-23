
(defun maxim(m l)
	(cond	
		((null (car l)) m)
		((> (car l) m) (maxim (car l) (cdr l)))
		(t (maxim m (cdr l))))
)

(defun removei(l e)   ;sterge un element (l:list, e:int)
(cond
	((null l) nil)
	((= (car l) e) (removei (cdr l) e))   ;daca e egal cu e nu il pune la rezultat
	((/= (car l) e) (cons (car l) (removei (cdr l) e)))   ;daca nu e egal il pune
	
)
)

(defun removemax(l)
  (set 'max (maxim 0 l))
  (return-from removemax (removei l max))
)

