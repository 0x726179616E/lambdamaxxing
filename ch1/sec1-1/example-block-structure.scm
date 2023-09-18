(require scheme)

; the sqrt procedure that implements lexical scoping for its formal parameter (x) and implements all its
; helper procedures within its block structure
(define (sqrt x)
  P
  (define (average a b) 
    (/ (+ a b) 2))

  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))

  (define (improve guess) 
    (average guess (/ x guess)))

  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

