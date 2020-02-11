#lang at-exp racket

(provide post author title text)

(require mc-social-media/blog/util)

(define (author)
  "Mona Elibiary")

(define (title)
  "The Soft Side of Coding: Critical Soft Skills Learned from Coding")

(define (post)
  (blog-post (title) (author) (text)))

(define (text)
  @paras{
  Prior to joining ThoughtSTEM and MetaCoders, I was a product marketing manager at a Fortune 50 technology company. I spent 20 years working with brilliant engineers and technologists in a quest to deliver exciting and relevant innovations to consumers. What I learned over my tenure is that innovations do not stem purely from great scientific minds - innovations come to market as a result of successful cross-functional teams (Research and Development, Finance, Marketing, Manufacturing, Sales, Operations, etc.,) collaborating to achieve a unified goal.

  I spent the majority of my days in meetings discussing, deliberating, and debating issues and opportunities with peers. Why is that? Because the best ideas do not come from a silo nor are they implemented single-handedly. For example, engineers may design a great innovation - but how do they know it will sell? - they need the help of marketing. Marketing may determine how best to sell - but how do they get products to the customer? - they need the help of operations. When operations determines how best to deliver the product, how do they ensure they can produce enough to meet demand? - they need the help of manufacturing. And at the end of the day, how does anyone know they can create and deliver the product profitably - that’s where finance comes in.

  So, as you can see, innovation requires more than technical skills and academic training. Successful team players capitalize on “soft-skills” to maximize their contributions to collaborative efforts. According to @(a href: "https://business.linkedin.com/talent-solutions/blog/recruiting-strategy/2019/soft-skills-are-hard-to-assess-but-these-6-steps-can-help" "LinkedIn’s Global Talent Trends 2019 report"), 92% of hiring professionals consider soft skills to be as or more important than hard skills; 89% indicate that when a new hire doesn’t work out, it’s because the person lacks essential soft skills.

  As a ThoughtSTEM coach, I am excited to see students grow their technical skills and coding savvy (hard skills), but I find it even more rewarding to see them develop and practice the use of critical “soft skills” that are so important in life and in the work world. Here are some of my classroom observations of what students learn beyond the computer:

  @b{Listening and Patience}

  Each class we gather “off the computer” to discuss concepts such as @b{systems}, @b{inputs} and @b{outputs}, and @b{bugs}. We discuss these concepts not only in the context of technology but also from a non-technology perspective. For instance, before explaining a technology concept, we typically start by comparing the topic to an everyday “tool” that students may be more familiar with. As an example, this week we discussed that a household kitchen is in essence a system with inputs of ingredients and outputs of baked goods and bugs such as not adding enough sugar or forgetting to turn on the oven. It is amazing to watch a classroom of 20+ kids who are eager to jump into coding and tempted by the sight of computers, listen with patience to their coding coaches and peers as they engage and contribute to a broader, and somewhat philosophical, discussion about the basis of what they are learning. Patience is further demonstrated when they go to their computers and discover a bug. Students must have the patience to read through their lines of code and look for their error; students must have the patience to see if the code change fixed their bug; students must have the patience to see if working code yielded their intended output; students must have the patience to wait for the coding coach to assist them (which requires that the coach read and test code once again).

  @b{Risk taking}

  One of the beauties of coding is the immediacy of feedback - positive and negative. If code has something that is not understandable by the computer, the student immediately gets an error and tries again. Students can easily identify mistakes, attempt to correct it, see if it works, and if not correct again - all in a matter of minutes. This immediacy fosters risk taking which encourages creative thinking and discovery.

  Consider a different situation in which students successfully run code, but receive different output than what was initially expected. Rather than frustration, this situation most often yields excitement and a sense of discovery: “I expected red text on a yellow background, but instead I got yellow text on a red background” or “I wanted my hippo to eat fish, but instead my fish is trying to eat the hippo - that’s kind of funny!” Students who stumble across this type of “error” often don’t try to change their code, but instead get creative to explore other “funny” stories or games. This is probably my favorite part of the class - students don’t feel discouraged by mistakes, instead they are energized and excited to show their coaches and friends their creations. Witnessing kids shift from a “follow precise instructions” mindset and embracing a culture of “try it and see what happens” is not only one of the most rewarding aspects of coaching, it is an attitude that drives innovation.

  @b{Attention to Detail}

  Coding is a precise science. Computers are taught to expect very specific commands and any deviation from that command will often result in a bug. As we’ve watched kids code and they troubleshoot, oftentimes their errors come from mistyped words - things like misspelling “turquoise” or forgetting to put a colon or dash in the command @code{#:font-size} . Coding requires attention to detail and because of the immediacy of feedback, students quickly realize that lack detail can result in a computer being “stuck.” As we progress each week, it is nice to see students learn to pay attention to the details that matter.   

  @b{Collaboration}
  
  Coding may seem like an individual task, but in our classrooms I see students constantly collaborating. Students code on individual computers, but because some students inevitably have more advanced keyboard, mousing, or coding skills, I oftentimes witness these  students helping other students identify errors. Students of all levels have healthy discussion and challenge one another to come up with different creative outputs - “I got my elephant to eat 10 apples and 5 fish” and “I got my fish to eat 25 bananas.” Students delight during our wrap up as they discuss how they came up with ideas inspired by their peers and brainstorm new goals for the following class.

  @b{Complex Problem Solving}

  The most successful leaders can visualize and articulate high level opportunities or problems, dissect them into manageable pieces, and then execute. Steve Jobs famously said “Everyone should learn how to program... because it teaches you how to think.” Coding is not a “one-and-done” task; as steps are navigated, obstacles are inevitably discovered and must be addressed. Coding teaches students how to break complex problems into smaller problems, solve those problems, and integrate all the pieces to develop a unified solution. Complex problem solving is an essential skill in almost any career in any industry.

  Before I wrap up, I wanted to reference an infographic from the @a[href: "https://www.shrm.org/resourcesandtools/hr-topics/employee-relations/pages/employers-say-students-arent-learning-soft-skills-in-college.aspx"]{Society for Human Resources Management study}. Here, you see employers are noticing that college graduates lack soft skills. As parents and educators, we have a great opportunity to emphasize the development of soft-skills as we teach hard skills.

  @img[width: "100%" 
       src: "https://github.com/thoughtstem/mc-social-media/raw/master/blog/soft-skills/images/infographic.png"]
  } )
