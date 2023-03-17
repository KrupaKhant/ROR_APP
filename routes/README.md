# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

>>>>Difference between collection route and member route.


-> collection routes are used for actions that don't require an ID parameter. These routes act on the collection of resources (e.g., listing all the records in the database), rather than a specific resource.

-> member routes are used for actions that require an ID parameter. These routes act on a specific resource (e.g., showing, updating, or deleting a specific record in the database).


Example:
    resources :photos do
      collection do
        get 'search' # A collection route for searching photos
      end

      member do
        get 'preview' # A member route for previewing a photo
      end
    end
