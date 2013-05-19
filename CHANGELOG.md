# Change Log

## [v0.2.1 (May 19, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.1)
* Cleaned up `post_controller_test.rb` to use Shoulda-context

## [v0.2.0 (May 19, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.0)
* Created user authentication system
* Updated front-end for authentication system
  * Login
  * Logout
  * Register
  * My Account
* Styled flash message
* Created custom routes
  * `/login`
  * `/logout`
  * `/register`
  * `/account`
  * `/news`
* Added tests for user account creation (email address, name)
* Added "Welcome to BoarderLine" to help system
* Restricted creation, editing and deletion of news posts to signed in user
* Hid create, edit and delete button to users who aren't signed in
* Created database association between users and news posts
* Scoped new news posts to current user

## [v0.1.0 (May 12, 2013)](https://github.com/davblayn/boarderline/tree/v0.1.0)
* Created a working news system
* Created help controller
* Created Markdown docs