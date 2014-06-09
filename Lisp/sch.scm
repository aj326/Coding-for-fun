;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Ahmed AlJehairan
; ahmed24633@gmail.com
; ahmed.jehairan@utexas.edu
; GitHub: https://github.com/aj326
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Project: learning
; Description: just seeing if this fucking works
;;;;;;;;;;;;;;;;;;;;;;;
;Definitions:
;;;;;;;;;;;;;
(define
  (sqr x)
  	(* x x))
(define
  (sum-of-squares x y)
  (+ (sqr x) (sqr y)))
(define
  (abs x)
  (cond
    ((>= x 0) x)
    ((< x 0) (- x))
    )
  )



