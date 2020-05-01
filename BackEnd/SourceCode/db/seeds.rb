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
        username: Faker::Internet.username
        password: 123
        email: Faker::Internet.email


    )
l1 = Language.create(title: "JavaScript", description: "JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.", resources: "https://developer.mozilla.org/en-US/docs/Web/JavaScript")
l2 = Language.create(title: "Ruby", description: "Ruby is an interpreted, high-level, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. Ruby is dynamically typed and uses garbage collection. It supports multiple programming paradigms, including procedural, object-oriented, and functional programming. According to the creator, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, Basic, and Lisp.", resources: "https://www.ruby-lang.org/en/documentation/")


    10.times do 
        Post.create(
            title: 
            content: 
            user_id:
            language_id:

        )