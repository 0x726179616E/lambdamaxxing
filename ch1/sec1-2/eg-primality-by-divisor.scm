(require scheme)

; two methods for checking primality of an integer
;   - one with growth Theta(sqrt(n)) 
;   - one with growth Theta(log(n)) - this one is a "probabilistic" algorithm

(define (smallest-divisor n) (find-divisor n 2))

; the end test for `find-divisor` is based on the fact that if `n` isn't prime then it must 
; have a divisor <= sqrt(n)
; therefore the number of steps requried will have an order of growth of Theta(sqrt(n))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (square x) (* x x))

(define (divides? a b) (= (remainder b a) 0))

; n is prime iff n is its own smallest divisor 
(define (prime? n)
  (= n (smallest-divisor n)))

(display (prime? 5))
(newline)

(display (prime? 15))
(newline)

