(defun lung(l)  ;counts the elements in the list
(cond
   ((null l) 0)
   (T (+ 1 (lung (cdr l))))
)
)
(defun maxim(m l)   ; call (maxim 0 '(1 2 3))
	(cond	
		((null (car l)) m)
		((> (car l) m) (maxim (car l) (cdr l)))
		(t (maxim m (cdr l))))
)

;(mountain l:list, m:int, d:int)
; m is the maximum value and d is the direction of moving: 1 for increasing, 0 for decreasing
;call: (mountain (l m 1))

(defun mountain(l m d)    
(cond
    ((AND (null (cdr l)) (= d 0)) 1)  ;daca mai avem un element si directia e 0 inseamna ca am ajuns la final cu un sir bun
     ((AND (null (cdr l)) (= d 1)) 0) ;daca directia e 1 inseamna ca inca nu am "coborat" de pe munte, deci nu e bine
    ((= (car l) m) (mountain (cdr l) m (- d 1)))   ;daca capul listei e egal cu maximul, apelam cu directia de mers schimbata: acum verificam descrescator
    
    ((AND (= d 1) (>= (car l) (car (cdr l)))) 0)   ;daca directia de deplasare e crescatoare, ne asiguram ca elementele sunt in aceasta ordine
    ((AND (= d 0) (<= (car l) (car (cdr l)))) 0)   ;daca directia e descrescatoare, verificm sa fie descrescatoare
    (T (mountain (cdr l) m d))   ;altfel facem apel cu coada listei, cu acelasi elem maxim si aceeasi directie
)
)


(defun check(l)
  (set 'maxi (maxim 0 l))
  (cond
    ((< (lung l) 3) (return-from check nil))    ;verifica sa fie lungimea > 3
    ((= (car l) maxi) (return-from check nil))
  (t (return-from check (mountain l maxi 1))) ; daca e mai mare ca 3, returneaza rez maximului
)
)
    
    