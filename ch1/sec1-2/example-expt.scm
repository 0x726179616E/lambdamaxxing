(require scheme)

; linear recursive process which requires both θ(n) steps (time) and space (memory)
(define (expt b n)
  (if (= n 0)
    1
    (* b (expt b (- n 1)))))

; iterative process which requires θ(n) steps (time) and θ(1) space (memory)
(define (expt-iter b n)
  (define (expt-iter-helper b counter product)
    (if (= counter 0)
      product
      (expt-iter-helper b 
                        (- counter 1) 
                        (* b product))))
  (expt-iter-helper b n 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x) (* x x))

(define (expt-parity b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-parity b (/ n 2))))
        (else (* b (expt-parity b (- n 1))))))

(display (expt 5 3))
(newline)
(display (expt-parity  5 3))
(newline)
(display (expt-iter 5 3))
(newline)

(display (expt 12 2))
(newline)
(display (expt-iter 12 2))
(newline)
(display (expt-parity 12 2))
(newline)

