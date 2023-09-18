(require scheme) 

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
    angle 
    (begin 
      (display angle)
      (newline)
      (p (sine (/ angle 3.0))))))

(display (sine 12.15))
(newline)

; when "sufficiently small" is fixed to 0.1 radians then it takes 6 applications of p:
; 12.15
; 4.05
; 1.3499999999999999
; 0.44999999999999996
; 0.15
; -0.39980345741334


; both the growth in space and time of this process are proportional to log(a) 
