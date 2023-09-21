(require scheme)

; computing the fibonacci numbers in a logarithmic number of steps

; Transformation T:
; a <-- a + b
; b <-- a

; calling T over and over again `n` times, starting with 1 and 0, produces the pair Fib(n+1) & Fib(n)

; fibonacci numbers are produced by applying T^n to the nth power of the transformation T, 
; starting with the pair (1,0)
