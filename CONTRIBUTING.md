Contributing to this project
============================

Introduction
------------
Althouth the source code for this project is available online, pull requests are generally not accepted from people outside of the project unless it fixes a massive bug.

Testing
-------
As this is a Rails app, it is important that new features are tested (this is done through [Travis-CI](http://travis-ci.org)) to prevent bugs from being introduced. [Shoulda](https://github.com/thoughtbot/shoulda) is used for testing, so instead of running tests like this...

``` ruby
test "a user can post a status update when signed in" do
  ...
end
```
    
...they would be run like this...

``` ruby
context "when signed in" do
  should "post a new status update" do
    ...
  end
end
```
    
This makes the code easier to read and saves time when writing tests

Branching
---------
If you decide to add a new feature to this project, add them to a new branch **not the master branch**. Send a pull request and once the code has been checked for bugs it will be merged into the master branch.
