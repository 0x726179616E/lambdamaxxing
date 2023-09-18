(require scheme)

; Ackermann's function
(define (A x y) 
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

; given two operands, 
; if the second operand is 0 then return 0
; if the first operand is 0 then double the second operand and return that result
; if the second operand if 1 then return 2
; otherwise repeated repeat the procedure but the first operand must be decreased by 1 
; and the second operand must be another repetition of the procedure with the current first 
; operand while the second operand must be decreased by 1

(display "(A 1 10): ")
(display (A 1 10))
(newline)

(display "(A 2 4): ")
(display (A 2 4))
(newline)

(display "(A 3 3): ")
(display (A 3 3))
(newline)

(define (f n) (A 0 n))
; f(n) = A(0,n)
; A(0,n) = 2*n

(define (g n) (A 1 n))
; g(n) = A(1,n)
; A(1,n) = A(0, A(1, n-1))

(define (h n) (A 2 n))
; h(n) = A(2,n)
;      = A(1, A(2, n-1))
;      = A(0, A(1, A(2, n-1) - 1))
;      = 2*(A(1, A(2, n-1) - 1))

(define (k n) (* 5 n n))
; k(n) = 5*(n^2)


