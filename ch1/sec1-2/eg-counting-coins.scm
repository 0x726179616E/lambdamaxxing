(require scheme)


; number of ways to change amount (a) using (n) kinds of coins =  
;   - the number of ways to change amount (a) using all but first kind of coin (n - 1) + 
;   - the number of ways to change amount (a - d) using all kinds of coins (n), where (d) is the 
;     denomination of the first coin

; degenerate cases:
;   - if amount (a) is 0, count that as 1 way to make change
;   - if amount (a) is less than 0, count that as 0 ways to make change
;   - if the kinds of coins (n) is 0, count that as 0 ways to make change

(define (count-change amount) (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1) 
        ((or (< amount 0) (= kinds-of-coins 0)) 0) 
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins)) 
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins) 
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(display (count-change 100))
(newline)
(display (count-change 11))
(newline)
