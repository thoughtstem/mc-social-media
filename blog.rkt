#lang at-exp racket

(provide blog blog-posts mc-social-media->frog)

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
	   ; #:alt-tag "Blogs"
            
            )
	  (container class: "p-5"
		     (h1 "Blog")
		     (add-between
		       (blog-posts)
		       (hr))))))

(define (blog-posts)
  (local-require (prefix-in soft-skills: "./blog/soft-skills.rkt"))
  (local-require (prefix-in language-learning: "./blog/language-learning.rkt"))
  (list
    (language-learning:post)
    (soft-skills:post)))

;Hopefully temporary hacks to pipe content to thoughtstem.com/blog
(define (mc-social-media->frog)
  (local-require (prefix-in soft-skills: "./blog/soft-skills.rkt"))
  (local-require (prefix-in language-learning: "./blog/language-learning.rkt"))

  (list
    (frog-post (language-learning:title)
	       (language-learning:author) 
	       (language-learning:text))

    (frog-post (soft-skills:title)
	       (soft-skills:author) 
	       (soft-skills:text))))

(define (frog-post title author text)
  @article{
    @header{
      @h2{@a[href: "https://metacoders.org/blog"]{@title}}
      @p[class: "date-and-time"]{}
      @p[class: "authors"]{By: @author}
    }
    @p{@(first text)}
    @a[href: "https://metacoders.org/blog"]{More...} 
  })

(module+ main
  (render 
    (list
      (bootstrap-files)
      (blog)) 
    #:to "out"))
