(require scheme)

; check parity of integer
(define (even? x) (= (remainder x 2) 0))

; doubles an integer
(define (double x) (+ x x))

; divides an even integer by 2
(define (halve x) (/ x 2))

; procedure that generates an iterative process for multiplying two integers in terms of adding, 
; doubling, and halving and uses a logarithmic number of steps
(define (fast-mul-iter a b)
  (define (helper a b i)
    (cond ((= b 0) i)
          ((even? b) (helper (double a) (halve b) i))
          (else (helper a (- b 1) (+ i a)))))
  (helper a b 0))


(display (fast-mul-iter 3 4))
(newline)

(display (fast-mul-iter 5 3))
(newline)

(display (fast-mul-iter 4 9))
(newline)

(display (fast-mul-iter 4 12))
(newline)
