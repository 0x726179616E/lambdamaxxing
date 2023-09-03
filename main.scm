(require scheme)

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (cleanabs x)
  (cond ((< x 0) (- x))
        (else x)))

(define (thirdabs x)
  (if (< x 0)
      (- x)
      x))




