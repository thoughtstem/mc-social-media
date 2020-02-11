#lang racket

(provide (all-from-out website/bootstrap)
         blog-post)

(require website/bootstrap)

(define (blog-post title author content)
  (card 
    (card-header title 
                 (card-subtitle "By " author))
    (card-body
      (card-text
	content))))
