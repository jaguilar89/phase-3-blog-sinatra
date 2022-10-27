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

Post.create(title: "Lorem Ipsum",
            body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur luctus dolor pretium, tincidunt eros non, tincidunt sapien. Vivamus malesuada quam sit amet tellus porttitor, ut sodales lorem tempor. Proin in sagittis nisl. Fusce ac luctus purus. Morbi at tincidunt nisl, in dignissim libero. Suspendisse ornare mi non leo iaculis ullamcorper. Cras ut enim non felis pellentesque egestas vel at libero. Sed tristique, ligula non sodales commodo, libero ipsum dictum velit, eu lobortis lectus elit eu enim. Fusce lobortis metus metus, vel luctus sem commodo id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque congue turpis felis, sit amet cursus justo tincidunt sed. Nullam at sapien vitae ex ultrices consequat. Vestibulum semper quis mauris eget tempus. Aenean sed mollis sapien, ac blandit magna. Duis hendrerit lacus sapien, sed venenatis quam pretium ac.

             Donec sit amet aliquam lacus. Cras dictum accumsan lacus, nec porttitor massa interdum vitae. Nam nec accumsan eros. Cras eget porttitor odio, non convallis erat. Cras sed faucibus nisi. Praesent in tellus convallis, consectetur nisi vitae, vulputate eros. Curabitur lobortis magna ac commodo volutpat. Cras ac nulla in massa aliquam interdum ut et velit.
             
             Aenean gravida mattis dolor, non malesuada est facilisis fringilla. In hac habitasse platea dictumst. Quisque vestibulum sodales iaculis. Morbi lacinia nisl ante, a laoreet erat venenatis at. Sed ullamcorper, nibh vel fringilla suscipit, mi elit convallis massa, non scelerisque purus quam in velit. Maecenas lacus nulla, ultricies vitae ipsum nec, dignissim pharetra nibh. In hac habitasse platea dictumst.
             
             Phasellus posuere sed erat eget volutpat. Nulla non posuere sem. Suspendisse imperdiet venenatis nibh, eget vulputate ligula imperdiet at. Aliquam in lacus metus. Quisque et augue augue. Nullam id lacus quis libero fringilla aliquet. Suspendisse dignissim laoreet consequat. Phasellus aliquam magna nec varius venenatis. Vestibulum consequat elit auctor erat gravida, eu consectetur mi aliquet. Duis ut erat lorem. Vivamus consectetur faucibus quam, non laoreet felis gravida nec. Suspendisse sed ante maximus, imperdiet lorem id, fringilla elit. Integer non lorem mi. In suscipit ante justo, a congue dui tincidunt eu. Nunc ut placerat nisl.
             
             Suspendisse at arcu cursus, hendrerit mauris sed, commodo magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales consectetur magna nec fermentum. Donec vel erat est. Duis elementum nulla id nisi feugiat, non egestas dolor cursus. Curabitur id augue auctor, convallis odio id, blandit nunc. Praesent eget nulla elit. Integer vitae cursus purus. Quisque pretium libero et iaculis consectetur. Etiam in neque non turpis viverra varius.")

puts "✅ Done seeding!"
