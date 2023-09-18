(require scheme)

; f(n) = { n                            if n < 3
;        { f(n-1) + 2f(n-2) + 3f(n-3)   if n >= 3

; procedure that computes f by means of a recursive process
(define (f-rec n) 
  (if (< n 3) 
    n 
    (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

; procedure that computes f by means of an iterative process
(define (f-iter n)
  (if (< n 3) 
    n
    (f-iter-helper n 3 2 1 0))) ; init the helper with values i, a, b, and c

(define (f-iter-helper n i a b c)
  (if (= i n)
    (+ a (* 2 b) (* 3 c))
    (f-iter-helper n (+ i 1) (+ a (* 2 b) (* 3 c)) a b))) 
    ; Shift a, b, c to the next set of values and increase the counter

(display (= (f-rec 10) (f-iter 10)))
(newline)
(display (= (f-rec 100) (f-iter 100)))
(newline)
