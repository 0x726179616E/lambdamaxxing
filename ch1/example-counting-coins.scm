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

(define (first-denomination kinds-of-coins) ; (in terms of canadian coinage as of 2023)
  (cond ((= kinds-of-coins 1) 5)
        ((= kinds-of-coins 2) 10)
        ((= kinds-of-coins 3) 25)
        ((= kinds-of-coins 4) 100)
        ((= kinds-of-coins 5) 200)))

(display (count-change 195))
(newline)
