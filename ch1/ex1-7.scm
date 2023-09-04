(require scheme)

; exercise 1.7: alternative good-enough? test which works better for both small and large numbers

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
    guess 
    (sqrt-iter guess (improve guess x) x)))

(define (good-enough? prev-guess guess)
  (< (abs (- guess prev-guess)) (* 0.001 guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))

; sqrt-iter now takes an additional operand to keep track of previous guesses.
; good-enough? now checks if the absolute difference between the current guess and the previous guess 
; is less than 0.001 times the current guess.

(display (sqrt 0.00000001)) ; should be closer to 1e-4
(newline) 
(display (sqrt 1e12)) ; shouold be closer to 1e6
(newline) 
