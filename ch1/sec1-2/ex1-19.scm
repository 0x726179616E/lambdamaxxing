(require scheme)

; complete this procedure which computes the fubonacci numbers in a logarithmic number of steps

(define (square n) (* n n))

(define (even? n) 
  (= (remainder n 2) 0))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count) 
         (fib-iter a
                   b
                   (+ (square p) (square q)) ; compute p'
                   (+ (* 2 p q) (square q))  ; compute q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) 
                           (* a q) 
                           (* a p))
                        (+ 
                          (* b p) 
                          (* a q))
                        p
                        q
                        (- count 1)))))

(display (fib 5))
(newline)
(display (fib 8))
(newline)
(display (fib 17))
(newline)
