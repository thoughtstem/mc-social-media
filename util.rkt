#lang at-exp racket

(provide render-post
         render-posts
         render-posts-to-file
         (struct-out post)
         moment)

(require gregor)


(struct post (text img-url time) #:transparent)

(define (render-post p)
  (string-join 
    (list
      (post-text p) 
      (post-img-url p) 
      (~t (post-time p) "MM/dd/yy HH:mm"))   
    ","))

(define (render-posts ps)
  (string-join
    (map render-post ps) 
    "\n")) 

(define (render-posts-to-file ps f)
  (with-output-to-file #:exists 'replace
    f
    (thunk
      (displayln (render-posts ps)))))

