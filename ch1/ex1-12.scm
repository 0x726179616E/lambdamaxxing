(require scheme)

; write a procedue that computes elements of pascal's triangle by means 
; of a recursive process

(define (pascal r c)
  (cond ((or (= c 0) (= c r)) 1) ; base case: outer edges of triangle
    (else (+ (pascal (- r 1) (- c 1))
             (pascal (- r 1) c))))) ; recursive case: sum of the two values from the previous row

; print a single row of pascals triangle (must be initially called with j = 0
(define (print-row r j)
  (cond ((< r j) (newline))
        (else 
          (begin 
            (display (pascal r j)) 
            (display " ")
            (print-row r (+ j 1))))))

(define (pascals-triangle rows) 
  (define (helper i j)
    (cond ((< rows i) (newline)) 
          (else 
            (begin
              (print-row i j)
              (helper (+ i 1) 0)))))
  (helper 0 0))

(pascals-triangle 5)
(pascals-triangle 10)
(pascals-triangle 20)
