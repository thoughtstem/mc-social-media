#lang racket

(provide overlay-text/top+bottom)

(require 2htdp/image) 

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


(define (overlay-text/top+bottom top bottom i)
  (define with-top-text
    (overlay/align 'middle 'top
                   (scale-to-width (pad (meme-text top))
                                   i)
                   i))

  (overlay/align 'middle 'bottom
                 (scale-to-width (pad (meme-text bottom))
                                 i)
                 with-top-text)) 
