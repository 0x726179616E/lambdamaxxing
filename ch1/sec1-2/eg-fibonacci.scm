(require scheme)

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(display "fib(6): ")
(display (fib 6))
(newline)

(display "fib(9): ")
(display (fib 9))
(newline)

