(require scheme)

; exercise 1.8: implement newton's method for cube roots 
; 
; if y is an approximation of the cube root of x, a better approximation is given by:
; ((x/y^2) + 2y)/3

(define (good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) (* 0.001 guess)))

(define (improve guess x)
  (/ (+ (/ x 
           (* guess guess)) 
        (* 2 guess)) 
     3))

(define (cuberoot-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
    guess
    (cuberoot-iter guess (improve guess x) x)))

(define (cuberoot x)
  (cuberoot-iter 0.0 1.0 x))

(displayln (cuberoot 27)) ; should return 3
(displayln (cuberoot 753571)) ; should return 91
