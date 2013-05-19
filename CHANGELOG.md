# Change Log

## v0.2.0 (May 19, 2013)
* Create user authentication system
* Update front-end for authentication system
  * Login
  * Logout
  * Register
  * My Account
* Style flash message
* Create custom routes
  * `/login`
  * `/logout`
  * `/register`
  * `/account`
  * `/news`
* Add tests for user account creation (email address, name)
* Add "Welcome to BoarderLine" to help system
* Restrict creation, editing and deletion of news posts to signed in user
* Hide create, edit and delete button to users who aren't signed in
* Create database association between users and news posts
* Scope new news posts to current user

## [v0.1.0 (May 12, 2013)](https://github.com/davblayn/boarderline/tree/v0.1.0)
* Created a working news system
* Created help controller
* Created Markdown docs