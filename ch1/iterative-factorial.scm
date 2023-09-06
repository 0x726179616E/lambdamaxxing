(require scheme)

(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
      product
      (iter (* counter product) 
            (+ counter 1))))
  (iter 1 1))

(display (factorial 6))
(newline)
(display (factorial 9))
(newline)
