#lang racket

(provide picard-wtf-meme)

(require 2htdp/image
         define-assets-from)

(define-assets-from "./images")

(define (meme-text s)
  (text/font s 24 "white"
             "Impact" 'swiss 'normal 'bold #f))

(define (pad i)
  (define w (+ (image-width i) 5))
  (define h (+ (image-height i) 5))
  (overlay i
           (rectangle w h 'solid 'transparent)))

(define (scale-to-width i i2)
  (define ratio
    (/ (image-width i2)
       (image-width i)))

  (scale ratio i))

(define (picard-wtf-meme #:top (top-text "WTF...")
                         #:bottom (bottom-text
                                    "Don't you add your own text?"))
  (define with-top-text
    (overlay/align 'middle 'top
                 (scale-to-width (pad (meme-text top-text))
                                 picard-wtf)
                 picard-wtf))

  (overlay/align 'middle 'bottom
                 (scale-to-width (pad (meme-text bottom-text))
                                 picard-wtf)
                 with-top-text))

(module+ test
  (picard-wtf-meme
    #:top "Omg, why don't peple"
    #:bottom "watch more StarTrek?"
    ))
