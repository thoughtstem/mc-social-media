#lang racket

(provide picard-wtf-meme
         picard-happy-meme
         picard-facepalm-meme)

(require define-assets-from
         "./util.rkt") 

(define-assets-from "./images")

(define (picard-wtf-meme #:top (top-text "WTF...")
                         #:bottom (bottom-text
                                    "Don't you add your own text?"))

  (overlay-text/top+bottom
    top-text
    bottom-text
    picard-wtf))

(define (picard-happy-meme #:top (top-text "Me, when")
                           #:bottom (bottom-text
                                    "I am very happy"))

  (overlay-text/top+bottom
    top-text
    bottom-text
    picard-happy))

(define (picard-facepalm-meme #:top (top-text "When I")
                              #:bottom (bottom-text
                                         "am disappointed"))

  (overlay-text/top+bottom
    top-text
    bottom-text
    picard-facepalm))
