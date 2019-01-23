(defun reversel(x)
  (cond
    (
      (atom x)
      x
    )
    (
      t
      (reverse(mapcar 'reversel x))
    )
  )
)
