(require scheme)

; define integer multiplication by means of repeated addition
(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

; check parity of integer
(define (even? x) (= (remainder x 2) 0))

; doubles an integer
(define (double x) (+ x x))

; divides an even integer by 2
(define (halve x) (/ x 2))

; multiplication procedure analogous to fast-expt that uses a logarithmic number of steps
(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-mul (double a) (halve b)))
        (else (+ a (fast-mul a (- b 1))))))

(display (fast-mul 3 4))
(newline)

(display (fast-mul 4 9))
(newline)



