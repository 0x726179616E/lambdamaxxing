(require scheme)

; iterative algorithm for computing factorial
(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
      product
      (iter (* counter product) 
            (+ counter 1))))
  (iter 1 1))

; recursive algorithm for computing factorial
(define (recursive-factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(display (factorial 12))
(newline)
(display (recursive-factorial 12))
(newline)
