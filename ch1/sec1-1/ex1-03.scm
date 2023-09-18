(require scheme)

; exercise 1.3: define a prodecure that takes 3 numbers as arguments and returns the sum of 
;               squares of the two larger numbers

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (largest-sum-of-squares x y z)
  (cond ((and (< x y) (< x z)) (sum-of-squares y z))
        ((and (< y x) (< y z)) (sum-of-squares x z))
        (else (sum-of-squares x y))))

(display (largest-sum-of-squares 10 -4 3)) ; should print 109

