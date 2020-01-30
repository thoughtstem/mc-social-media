#lang at-exp racket

(require "./util.rkt")

(define posts
  (list
    (post
      @~a{A classroom is a place of discovery for a curious child.}

      "https://raw.githubusercontent.com/thoughtstem/stock-photos/master/facebookphotos/19.JPG"
      (moment 2020 2 12 
              13 00))
    
    (post
      @~a{A special teacher is remembered for a lifetime.}
      "https://raw.githubusercontent.com/thoughtstem/stock-photos/master/facebookphotos/21.jpeg"
      (moment 2020 2 13 
              13 00))
    ))


(define test.csv
  (build-path "csv" "test.csv"))

(render-posts-to-file posts test.csv)

(displayln
  (file->string test.csv))

