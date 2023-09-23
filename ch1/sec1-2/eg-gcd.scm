(require scheme)

(define (gcd a b)
  (if (= b 0) a
    (gcd b (remainder a b))))

(display (gcd 16 28))
(newline)

(display (gcd 210 45))
(newline)

