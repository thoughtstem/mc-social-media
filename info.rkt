#lang info
(define collection "mc-social-media")
(define deps '("base"
               "gregor"
	       "aws"
               "https://github.com/thoughtstem/define-assets-from.git"
               ))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/mc-social-media.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))
