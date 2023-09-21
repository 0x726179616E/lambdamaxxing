(require scheme)

; check a number's parity 
(define (even? n)
  (= (remainder n 2) 0))

; sqaure a number 
(define (square x) (* x x))

; a procedure that evolves an iterative exponentiation process that uses successive squaring 
; and uses a logarithmic number of steps
(define (expt b n)
  (define (helper b n a)
    (cond ((= n 0) a)
          ((even? n) (helper (square b) (/ n 2) a))
          (else (helper b (- n 1) (* a b)))))
  (helper b n 1))


(define (expt-recursive b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-recursive b (/ n 2))))
        (else (* b (expt-recursive b (- n 1))))))

(display (expt 12 2))
(newline)
(display (expt-recursive 12 2))
(newline)

(display (expt 5 3))
(newline)
(display (expt-recursive 5 3))
(newline)

(display (expt 11 31))
(newline)
(display (expt-recursive 11 31))
(newline)

(display (expt 11 32))
(newline)
(display (expt-recursive 11 32))
(newline)
