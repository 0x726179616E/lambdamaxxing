(require scheme)

; using the substitution method for normal order evaluation, illustrate the process generated in
; evaluating `(gcd 206 40)` and indicate the `remainder` operations that are actually performed

; how many `remainder` operations are actually performed for its normal-order evaluation?
; what about the applicative-order evaluation?

(define (gcd a b)
  (if (= b 0) a
    (gcd b (remainder a b))))

(display (gcd 206 40)) ; output is 2
(newline)

; normal order eval:
; 
; (gcd 206 40)
; if (= 40 0) 206 (gcd 40 (remainder 206 40))
; if (= 40 0) 206 (if (= (remainder 206 40) 0) 40 (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
; if (= 40 0) 206 (if (= (remainder 206 40) 0) 40 (if (= (remainder 40 (remainder 206 40)) 0) (remainder 206 40) (gcd (remainder (remainder 206 40) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))
; ... I don't want to keep expanding and then count all these remainder ops by hand ngl


; applicative order eval:
;
; (gcd 206 40)
;   (gcd 40 (remainder 206 40) --> (gcd 40 6)
;     (gcd 6 (remainder 40 6) --> (gcd 6 4)
;       (gcd 4 (remainder 6 4) --> (gcd 4 2)
;         (gcd 2 (remainder 4 2)) --> (gcd 2 0) --> 0

; there are 4 remainder operations performed in the case of applicative order evaluation
