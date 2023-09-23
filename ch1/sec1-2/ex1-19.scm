(require scheme)

; computing the fibonacci numbers in a logarithmic number of steps

; Transformation T:
; a <-- a + b
; b <-- a

; calling T over and over again `n` times, starting with 1 and 0, produces the pair Fib(n+1) & Fib(n)

; fibonacci numbers are produced by applying T^n to the nth power of the transformation T, 
; starting with the pair (1,0)

; consider T to be the special case of p=0 and q=1 in a family of transofrmations Tpq where:
; Tpq transforms the pair (a,b) according to:
;   a <-- bq + aq + ap
;   b <-- bp + aq
; 
; if Tpq is applied twice, the effect is the same as using a single transformation Tp'q' 
; and compute p' and q' in terms of p and q 

; first transformation:
;   a <-- b1q + a1q + a1p
;   b <-- b1p + a1q
; second transformation:
;   a <-- (b1p + a1q)q + (b1q + a1q + a1p)q + (b1q + a1q + a1p)p
;   b <-- (b1p + a1q)p + (b1q + a1q + a1p)q


(define (even? n) 
  (= (remainder n 2) 0))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count) 
         (fib-iter a
                   b
                   ; compute p'
                   ; compute q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

(display (fib 5))
(newline)
(display (fib 8))
(newline)
