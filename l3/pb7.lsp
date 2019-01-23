(defun repl(e l1 l)
(cond
((and (atom l) (= l e)) l1)
((and (atom l) (/= l e)) l)
(T (mapcar #'(lambda(x) (repl e l1 x)) l))))