# Change Log

## [v0.2.5 (June 1 2013)](https://github.com/davblayn/boarderline/tree/v0.2.5)
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