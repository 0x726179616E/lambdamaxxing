(require scheme)

; f(n) = { n                            if n < 3
;        { f(n-1) + 2f(n-2) + 3f(n-3)   if n >= 3

; procedure that computes f by means of a recursive process
(define (f-rec n) 
  (if (< n 3) (n) 
    (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

; procedure that computes f by means of an iterative process
(define (f-iter n)) ; TODO
