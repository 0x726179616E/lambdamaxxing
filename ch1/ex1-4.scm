(require scheme)

; exercise 1.4: observe that our model of evaluation allows for combinations whose operators are
;               compound expressions. use this observation to describe the behaviour of the 
;               following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; within the a-plus-abs-b procedure that takes two operands, the operator that will act upon both operands is not predetermined but actually dependent on a conditional expression 
