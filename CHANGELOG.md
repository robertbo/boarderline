# Change Log

## [1.2.1 (June 5, 2013)](https://github.com/davblayn/boarderline/tree/1.2.1)
* Updated authentication pages for mobile
* Updated home page for mobile

## [v1.2.0 (June 4, 2013)](https://github.com/davblayn/boarderline/tree/v1.2.0)
* Updated home page
  * Removed modal
  * Displayed a "no news" message when there is no news to display
* Updated the gravatar_url method and wrote a test for it in `user_test.rb`
* Made BoarderLine responsive
* Changed navbar so it is not fixed to the top of the screen

## [v1.0.1 (June 2, 2013)](https://github.com/davblayn/boarderline/tree/v1.0.1)
* Update `post_controller_test.rb`

## [v1.0.0 (June 1, 2013)](https://github.com/davblayn/boarderline/tree/v0.1.0)
* Added "admin" column to user table
* Required user to be an admin to
  * Access `new`
  * Create a post
  * Access `edit`
  * Update a post
  * Destroy a post
* Hidden admin links to users who are not admins
* Fixed bug which allowed posts to be created without a user_id assigned, thus causing a 500 error (refer to issue #34)

## [v0.2.5 (June 1, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.5)
* Created modal on home page
* Created .center class and rearranged stylesheets
* Changed "forgot password" note
* Ignore Zeus socket files

## [v0.2.4 (May 29, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.4)
* Made BoarderLine open-source
* Added project to Codeship and added badge
* Added Code Climate badge
* Added project to Coveralls and added badge

## [v0.2.3 (May 21, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.3)
* Removed link to password reset (replaced with note to contact ICT)

## [v0.2.2 (May 20, 2013)](https://github.com/davblayn/boarderline/tree/v0.2.2)
* Created home page
* Installed font-awesome via CDN
* Added `gravatar_url` method to user model
* Changed `edit_user_registration_path` in navbar to `account_path`

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