(require scheme)

; exercise 1.6: 
; Alyssa P. Hacker doesn’t see why if needs to be provided as a special form. 
; “Why can’t I just define it as an ordinary procedure in terms of cond?” she asks. 
; Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(display (new-if (= 2 3) 0 5)) ; should return 5
(newline)
(display (new-if (= 1 1) 0 5)) ; should return 0
(newline)

; Alyssa uses new-if to rewrite the sqrt program
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(sqrt-iter 1.0 9) ; calling this results in an infinite loop

; in the special form 'if' procedure, the expressions are evaluted in a normal ("lazy") fashion but in
; the new-if procedure, the interpreter uses applicative-order evaluation which ends up evaluating both
; the then-clause and the else-clause which defeats the purpose of having a conditional expression.
; this also causes an infinite loop since the else-clause is a recursive call back into sqrt-iter

; when the 'if' procedure is evaluated lazily then only one of the clauses will be evaluated in a given
; iteration and therefore avoid any infinite looping

