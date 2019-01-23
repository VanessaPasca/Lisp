(defun pb9(a l)
(cond
((and (atom l) (equal a l)) nil)
((and (atom l)) (list l))   ;(list l) pentru mapcan
(t (mapcan #'(lambda(x) (pb9 a x)) l))))

;chestia asta cu mapcar pentru apelul cu 3 si '(1 2 3) dadea ((1) (2) nil)
;pt mapcon dadea out of stack


(defun removeoc(x e)
  (cond
    (
      (and (atom x) (eq x e))
      nil
    )
    (
      (and (atom x) (not (eq x e)))
      (list x)
    )
    (
     t
      (mapcan #'(lambda (x) (removeoc x e)) x)
    )
  )
)