# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


10.times do 
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email
    )
end
l1 = Language.create(title: "JavaScript", description: "JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", resources: "https://developer.mozilla.org/en-US/docs/Web/JavaScript")
l2 = Language.create(title: "Ruby", description: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matz Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, Basic, and Lisp.", resources: "https://www.ruby-lang.org/en/documentation/")

p1 = Post.create(title: "Free Ruby and Rails Programming Courses for Beginners", 
content: "Hello guys, welcome to this post, here you will find some of the best free courses to learn Ruby programming language and Ruby on Rails framework online. If you don’t know what is Ruby and what is Rails framework then let me tell you that its one of the simplest programming languages with little to no syntax. If you are new to programming or never coded before then also developing a Ruby application will be much easier than choosing any other programming language like Python or Java. This is a beginner level free course from Udemy to learn the fundamentals of Ruby programming language. If you are new to both Ruby and Programming itself then this is an ideal course to start with. Before learning Rails, a Ruby framework for developing a web application, it’s important to learn Ruby programming itself. Since Ruby has very little to no syntax, It is the easiest language to learn any programming language.",
user_id: User.all.sample.id,
language_id: l2
)
p2 = Post.create(title: "My favorite free JavaScript tutorials and courses for Beginners",
content: "Hello All, We are fortunate to live in a world of technology where you have access to a lot of resources like free tutorials, books, and courses to learn whatever we want, all thanks to the Internet. You can literally learn whatever you want and that too, without spending too much money like Coding, Web Development, Mobile Development, Database, Cloud Computing, Machine Learning, or whatever you want. But, if you are interested in the beautiful world of Web Development and If you want to learn JavaScript, there are plenty of websites that provide free JavaScript tutorials where you can learn JavaScript online for FREE. In one word, Code Academy is one of the best free JavaScript tutorials, and I have learned JavaScript from this site. It is also one of the best platforms to learn new technologies online but probably the best website to learn JavaScript online.
Even though currently, Codecademy offers Java, Git, UNIX command line, and several other courses, it made its name by an interactive JavaScript course to learn online at your own pace. You can gauge the popularity of this course by looking at the number of students enrolled, currently, 5M+, which is the very high number for any online FREE course.",
user_id: User.all.sample.id,
language_id: l1
)

    50.times do 
        Post.create(
            title: Faker::Book.title,
            content: Faker::Quote.famous_last_words,
            user_id: User.all.sample.id,
            language_id: Language.all.sample.id
        )
    end
p3 = Post.create(title: "Best Ruby Practice", content: "Dude just google", user_id: User.all.sample.id, language_id: Language.all.sample.id)