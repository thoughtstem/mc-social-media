#lang at-exp racket

(require "./util.rkt"
         mc-social-media/memes/main)

(define posts
  (list
    (post
      @~a{We need more Picard memes in the world.}
      (picard-wtf:why-not-more-memes)
      (moment 2020 2 12 
              13 00))
    
    (post
      @~a{Best feeling ever.}
      (picard-happy:when-my-code-runs)
      (moment 2020 2 13 
              13 00))

    (post
      @~a{Not again!!!}
      (picard-facepalm:when-students-switch-languages)
      (moment 2020 2 13 
              13 00))
    ))


(define test.csv
  (build-path "csv" "test.csv"))

(render-posts-to-file posts test.csv)

(displayln
  (file->string test.csv))

