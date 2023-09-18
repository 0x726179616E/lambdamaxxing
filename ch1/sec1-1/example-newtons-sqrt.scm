(require scheme)

; compute square root via newton's method of successive approximations: 
; a guess y for the value of the sqrt of a number x can be improved by averaging y with x/y
; y' = (x/y + y)/2

(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
    guess 
    (sqrt-iter (improve guess x) x))) 

(define (improve guess x)
  (average guess (/ x guess))) 

(define (average x y)
  (/ (+ x y) 2))

; guess is good enough if its square differs from radicand by less than a tolerance (0.001)
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)) 

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x)) ; always start with a guess of 1.0

(display (sqrt 9))
(newline)

(display (sqrt 16))
(newline)

(display (sqrt (+ 100 44)))
(newline)
