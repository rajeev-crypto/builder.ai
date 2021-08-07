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
# postman collaction 
https://www.getpostman.com/collections/7133503a273772b0055e

# seed.rb
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

```emails = []
firstName = []
lastName = []
email.each_with_index do |email, index|
	User.crete(email: email, firstName: firstName[index], lastName: lastName[:index])
end```
