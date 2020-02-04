#lang at-exp racket

(provide blog)

(require website/bootstrap
	 metacoders-dot-org-lib)


(define (blog)
  (list
    (index.html)))

(define (index.html)
  (page index.html
	(normal-content-wide
	  (mc-jumbotron-header
	    #:title "The Blog"
	    #:tagline "The future will be written with code"
	    #:percent-height "60vh"
	    ;#:image-path (picsum 500 300) ;Throws some kind of error.  mc-jumbotron-header needs some docs... 
	    #:alt-tag "Blogs")
	  (container class: "p-5"
		     (h1 "Blog")
		     (blog-posts)))))

(define (blog-posts)
  (list
    (blog-post "First"
	       @paras{
                 This is the first post!

		 More coming soon!
	       })))


(define (blog-post title content)
  (card (card-header title)
    (card-body
      (card-text
	content))))

(module+ main
  (render 
    (list
      (bootstrap-files)
      (blog)) 
    #:to "out"))
