#lang racket

(define lower 1)
(define upper 100)

(define (guess)
  (quotient (+ lower upper) 2))


(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))



(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))


(define (input)
  (display "Enter something: ")
  (flush-output)
  (let ((line (read-line)))
	(display "You entered: ")
	(displayln line)))

(define (main)



(input)
