(require scheme)

; fermat's little theorem: if n is a prime number and a is any positive integer less than n,
;                          then a raised to the nth power is congruent to a modulo n
;
; note: two numbers are congruent modulo n if they both have the same remainder when divided by n

; algorithm for testing primality:
;   - given a number n, pick a random number a < n and compute remainder of a^n mod n
;   - if result != a, then n is certainly not prime
;   - if result = a, then there's a good chance that n is prime so pick another random number a
;     and test it with the same method
;   - if it also satisfies the equation then we can be even more confident that n is prime
;   - keep repeating test with new samples of a until desired number of steps is reached 

; compute the exponential of a number modulo another number
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) 
         (remainder 
           (square (expmod base (/ exp 2) m)) 
           m))
        (else
          (remainder 
            (* base (expmod base (- exp 1) m)) 
            m))))

; choose a random number a between 1 and n-1 inclusive
; check whether the remainder modulo n of a^n == a
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

; run the test a given number of times specified by a parameter
; returns true if every test passes, otherwise returns false

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))


(define (square x) (* x x))

(display (fast-prime? 709 5))
(newline)
(display (fast-prime? 710 5))
(newline)
