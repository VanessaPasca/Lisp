(defun inorder1(l)
(cond
((null l) nil)
(t (append (inorder1 (car (cdr l))) (list (car l)) (inorder1( car (cdr (cdr l))))))))