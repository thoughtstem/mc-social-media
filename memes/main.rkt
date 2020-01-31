#lang racket

(provide (all-defined-out))

(require mc-social-media/meme-generator/main) 

(define (picard-wtf:why-not-more-memes)
  (picard-wtf-meme #:top "Why do people think it's okay"
                   #:bottom "to have social media without Picard memes?"))

(define (picard-happy:when-my-code-runs)
  (picard-happy-meme #:top "Me when my code runs correctly"
                     #:bottom "the very first time..."))

(define (picard-facepalm:when-students-switch-languages)
  (picard-facepalm-meme #:top "When one of my coding students wants to switches languages"
                     #:bottom "...for the forteenth time this month"))
