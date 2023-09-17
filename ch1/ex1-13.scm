(require scheme)

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


; gr: golden ratio
(define googled-gr 1.618033988749894)
(define computed-gr (/ (+ 1 (sqrt 5)) 2))


(define (fib-googled n) (round (/ (expt googled-gr n) (sqrt 5))))

(define (fib-formula n) (round (/ (expt computed-gr n) (sqrt 5))))




(display (= (fib 5) (fib-googled 5) (fib-formula 5)))
(newline)
(display (= (fib 15) (fib-googled 15) (fib-formula 15)))
(newline)
