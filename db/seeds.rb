puts "🌱 Seeding spices..."

Post.create(title: "Hello World!",
            body: "Welcome to my blog! This is a simple blog written as a full stack web application using a React frontend and a Ruby/Sinatra backend.
                    You can create a blog post and/or add a comment on that post, all of which are stored on a local sqlite database via Sinatra.
                    Thanks to Sinatra you can even edit and delete posts. Try it out!")

Post.create(title: "Separation of Concerns",
            body: "The separation of concerns concept is an abstract version of the single responsibility principle. This idea states that a program should be designed with different containers, and these containers should not have access to each other.

            A well-known example of this is the model-view-controller (MVC) design. MVC separates a program into three distinct areas: the data (model), the logic (controller), and what the page displays (view). Variations of MVC are common in today's most popular web frameworks.
            
            For example, the code that handles the database doesn't need to know how to render the data in the browser. The rendering code takes input from the user, but the logic code handles the processing. Each piece of code is completely independent.
            
            The result is code that is easy to debug. If you ever need to rewrite the rendering code, you can do so without worrying about how the data gets saved or the logic gets processed.")

puts "✅ Done seeding!"
