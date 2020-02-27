#lang at-exp racket

(provide post author title text)

(require mc-social-media/blog/util)

(define (author)
  "Mona Elibiary")

(define (title)
  "Coding: It makes your brain stronger!")

(define (post)
  (blog-post (title) (author) (text)))


(define (text)
  @paras{
  There are so many pragmatic benefits to learning to code. According to a Burning Glass study, jobs involving coding pay 35% more than other career track jobs, and demand for programming jobs are growing 50% faster than overall job market growth. Coding is also an excellent format to practice risk-taking and attention-to-detail, which are essential skills for the workplace. 

  But are there benefits that extend beyond the job market? The answer seems to be yes - coding can actually improve mental vitality. Researchers are discovering cognitive benefits and growth that come with learning to code. Coding exercises one’s creative thinking and reasoning skills which ultimately encourage new ways to express ideas and approach problems. It is this thinking that is prompting educational systems to encourage students as young as kindergarteners to engage in programming activities. 

  @img[width: "100%" 
       src: "https://github.com/thoughtstem/mc-social-media/raw/master/blog/language-learning/images/coding-stock.jpg"]

  Mitch Resnick, Director of the Lifelong Kindergarten group at MIT’s Media Lab argues "When you learn to read, you can then read to learn. And it's the same thing with coding. If you learn to code, you can code to learn." Resnick continues the analogy to point out that while few people will become professional writers, it is useful for everyone to learn to read and write. While many kids may not grow up to be professional programmers or computer scientists, most will benefit from learning to think creatively and logically.  

  Further consider that code is effectively just a language - it is created to communicate information from one entity (a human) to another (a computer). So when you write code your brain is having to think "bilingually" - you may be initially processing information in your native language such as English or French, but your brain must translate that into your coding language. Now consider the cognitive benefits of being bilingual. Research shows that the bilingual brain more efficiently processes, absorbs, and retains information as well as fends off cognitive decline verses the monolingual brain. Imaging techniques like functional magnetic resonance imaging (fMRI) helped scientists determine that bilingual experience not only changes the way neurological structures process information, but also may alter those neurological structures. Similarly, when we learn and practice the "language of coding", our brains form new neural connections while strengthening existing ones each time we practice.

  @img[width: "100%" 
       src: "https://github.com/thoughtstem/mc-social-media/raw/master/blog/language-learning/images/brain-stock.jpg"]

  There is ongoing research to better understand the cognitive benefits of coding. According to the Journal of Educational Psychology, learning to program improves cognitive skills and teaches students to think. The study found that students who learned to program outperformed those who did not program in cognitive skills such as creative thinking, mathematical skills, metacognition, and reasoning. A 1991 meta-study looked at the cognitive effects of computer programming and found that students with computer programming experience scored 16 percentile points higher on various cognitive-ability tests than students without programming experience. The findings further suggested that the learning went beyond coding content, implying that coding can be an effective means of teaching cognitive skills in the classroom. A 2014 study using fMRI to observe brain activity, found that programmers working through code and comprehending code snippets had increased activity in five distinct parts of the brain used for language processing, memory, and attention. 

  @ul{
    @li{Middle frontal gyrus for attention, language, and memory}
    @li{Middle temporal gyrus for semantics}
    @li{Inferior parietal lobule for memory}
    @li{Inferior frontal gyrus for memory}
    @li{Inferior frontal gyrus for language, and memory}
  }

  So while some have argued that coding relies mainly on math and logic skills, scientists are now proving that coding also requires attention, language, memory, logic, and creativity; using all these cognitive skills keeps the brain busy and healthy. The brain is like a muscle, which means we need to exercise it to maintain brain vitality. As you code, the ability to simplify complex issues is similar to a brain workout. An active mind is a healthy mind. Programming exercises the mind and keeps logical, analytical, and creative skills sharp. 
  })


