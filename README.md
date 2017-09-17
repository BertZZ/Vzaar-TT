# Vzaar Tech test

## Specifications

Make a simple Rails application for accepting new user signups. No need to worry about
handling logins and sessions. We just want a form, which users can complete to create an
account.
The form should allow each user to provide the following information:
* Username (required)
* Password (required)
* Email address (required)
* Address
* Telephone number

Once submitted, the user’s details should be saved to a database.
After the user’s account has been created, send them an email welcoming them to the platform
and confirming their username.

## Approach

The project was written in Ruby on Rails using Test Driven Development.

## Quick Start Guide
First clone this repo. Then:
```
bundle install
bin/rails db:create
bin/rails db:migrate

bundle exec rspec # Run the tests to ensure it works
bin/rails server # Start the server at localhost:300
```
## Screenshots
Passing Rspec Tests
![rspec](https://user-images.githubusercontent.com/26028408/30526096-6bd0d98a-9c0c-11e7-80dd-8b1612aeb954.png)

Email recieved
![email confirmation](https://user-images.githubusercontent.com/26028408/30526098-842f6e92-9c0c-11e7-909b-c3ead26417c2.png)

