
# STEP 1 Starting point
- Delete lists and bookmarks controllers
- Delete lists and bookmarks folders inside /views
- Clean all the routes in routes.rb
- Drop, create and migrate the DB => rails db:drop => rails db:create => rails db:migrate
- Make sure you have a seed of at least 4 movies
- Start the server and open the app on localhost

# STEP 2 "As a user, I can see all my movie lists"
- Create 2 lists using Rails console (List.create(name: "horror"))
- Create the route GET "/lists" => resources :lists
- Create lists controller
- Define the index method. It should retrieve all the lists from the DB
- Create the corresponding view
- Display all the lists names in a ul


# STEP 3 "As a user, I can see the details of a movie list"
- Create the route GET "/lists/:id" => resources :lists, only: [:index, :show]
- Go to this url '/lists/1'
- Fix all the Rails errors
- In the #show method retrieve the list with the specific ID from the url
- Display in a h1 the name of the list

# STEP 4 "As a user, I can create a movie list"
* 4.1
- Create the route GET "/lists/new"
- Implement the simple form in the view

* 4.2
- Create the route POST "/lists"
- Define the create method
- Create a new List using data coming from the form
- redirect to index

# STEP 5 Make the App navigable
- Create the links to go to the show page of a list
- create the link to go back to the index
- Create the right link to add a new list, and make it a bootstrap button

# STEP 6 "As a user, I can bookmark a movie inside a movie list"
* 6.1
- Create the route GET "lists/:list_id/bookmarks/new"
- Go to 'lists/1/bookmarks/new' and Fix all the Rails errors
- Implement the simple_form in the view and the relative instances in the #new
- In the simple_form use f.association to select a movie

* 6.2
- Create the route POST "lists/:id/bookmarks"
- Create a new Bookmark (you need to know which movie and which list)
- Save the bookmark and redirect to the list show page

# STEP 7 Display all the movie in the list show page
- Iterate through all the bookmarks of the list,
  for each one display the movie title and the poster

# STEP 8 "As a user, I can destroy a bookmark

- Create the route DELETE "bookmarks/:id"
- Create a delete link for each movie
- Create a destroy method and destroy the bookmark
- Redirect to same list show page

# STEP 9 Make the App navigable
- Create a link to add a movie to the list
