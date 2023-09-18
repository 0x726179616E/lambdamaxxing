(require scheme)

; exercise 1.5: Ben Bitdiddle has invented a test to determine whether the interpreter he is 
;               faced with is using applicative- order evaluation or normal-order evaluation. 
; He defines the following two procedures:

(define (p) (p)) 
(define (test x y) 
  (if (= x 0) 0 y))

; then he evaluated the expression:
(test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? 
; What behavior will he observe with an interpreter that uses normal-order evaluation?

; --------
; p: just returns the operand it's given
; test: returns the first operand if the operand is equal to 0, 
;       otherwise returns the second operand

; an interpreter with applicative-order evaluation will not run properly as it will try to evaluate p, which is undefined, before it gets to the body of the test procedure.

; an interpreter normal-order (aka "lazy") evaluation on the other hand will return 0 after running the same procedure because it will only have evaluated the first operand for the test procedure which happens to satisfy the 'if' expression's predicate. in this case, the interpreter has no need to evaluate the second operand (which is p) and therefore does not run into the problem of p being undefined
