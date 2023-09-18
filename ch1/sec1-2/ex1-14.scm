(require scheme)

; (count-change 11)

; (cc 11 5) 

; (+ (cc 11 5)
;    (cc -39 5))

; (+ (+ (cc 11 4)
;       (cc -14 4))
;    (cc -39 5)) 

; (+ (+ (+ (cc 11 3)
;          (cc 1 3))
;       (cc -14 4))
;    (cc -39 5)) 

; (+ (+ (+ (+ (cc 11 2)
;             (cc 6 2))
;          (cc 1 3))
;       (cc -14 4))
;    (cc -39 5)) 

; (+ (+ (+ (+ (+ (cc 11 1) -> 1
;                (cc 1 1)) -> 1 
;             (cc 6 2)) -> 1 
;          (cc 1 3)) -> 1 
;       (cc -14 4)) -> 0 
;    (cc -39 5))  -> 0

; final output -> 4 

; the order of growth in memory (space) is linear 
; the order of growth in steps (time) is exponential
