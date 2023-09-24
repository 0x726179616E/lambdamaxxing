(require scheme)

; Euclid's algorithm expressed as a procedure
; - generates an iterative process whose number of steps (time) grows a logarithm of the numbers
;   involved
(define (gcd a b)
  (if (= b 0) a
    (gcd b (remainder a b))))

(display (gcd 16 28))
(newline)

(display (gcd 210 45))
(newline)

