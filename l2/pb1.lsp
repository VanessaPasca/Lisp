(defun isThere(l x)
(cond
((null l) nil)
((eq (car l) x) t)  ; am gasit x
((eq (car (cdr l)) 0) nil)   ; situatia (B 0) , nu e x => nu l-am gasit
((eq (car (cdr l)) 1) (isThere (cdr (cdr l)) x))
(t (or (isThere (rightside (cdr (cdr l)) 1) x) (isThere (cdr (cdr l)) x))))) ;in stanga sau in dreapta  

(defun rightside(l step)  ;l: o lista , step: cu ce pas pornesc
(cond
((and (not (numberp (car l))) (= step 0) ) l) ;daca nu e numar si step-ul e 0 => am ajuns la lista ce semnifica partea dreapta
((not (numberp (car l))) (rightside (cdr l) (- step 1))) ; daca pur si simplu nu e numar facem apel recursiv pe cdr si scadem step-ul; practic am dat de partea stanga
(t (rightside (cdr l) (+ step (car l)))))) ; altfel e numar si facem apel recursiv pe restul listei adaugand la pas

(defun path(l x)
(cond
((null l) nil)
((eq (car l) x) (list x))   ; daca car-ul e x (X k)
((eq (car (cdr l)) 0) nil)  ; car-ul nu e X si cdr-ul e 0: (B 0)
((and (isThere l x) (eq (car (cdr l)) 1))  ;daca e in lista si avem doar un subarbore
 (append (list (car l)) (path (cdr (cdr l)) x)))   ;punem pe path pe car l si apel recursiv pe cdr de cdr si x:
;ceva de genul: (a 2 b .... X) => apel de (b ...X)
((and (isThere (cdr (cdr l)) x) (eq (car (cdr l)) 2)) ; daca e in stanga  si avem doua subtree: adaugam la path si
;facem apel recursiv pe stanga
  (append (list(car l)) (path (cdr (cdr l)) x)))
((and (isThere(rightside (cdr (cdr l)) 1) x) (eq (car (cdr l)) 2)); verificam dreapta
 (append (list (car l)) (path (rightside (cdr (cdr l)) 1) x)))))
