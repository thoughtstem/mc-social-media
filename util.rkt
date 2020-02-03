#lang at-exp racket

(provide render-post
         render-posts
         render-posts-to-file
         (struct-out post)
         moment
	 upload-to-bucket)

(require gregor)

(require 
  aws/s3
  (only-in 2htdp/image save-image)
  "./aws_keys.rkt")


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


(define (upload-to-bucket image name)
  (s3-region "us-west-1")

  (define name.png
    (~a name ".png"))

  (save-image image name.png)

  (displayln (~a "Uploading " name.png))

  (put/file
    (~a "mc-social-media/" name.png)
    (build-path name.png)
    #:mode 'text)

  (delete-file name.png)

  (format "https://s3-us-west-1.amazonaws.com/mc-social-media/~a" name.png))
