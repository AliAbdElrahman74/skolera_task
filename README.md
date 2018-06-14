# Zendesk Talk Interview

Hello! This is a standard Rails 5 Project. You should be able to get set up by cloning this repo locally and running `bundle install`.

To set up the database `bundle exec rake db:setup`

To run specs `bundle exec rspec`.

To run the server `rails s`.

To open a console `rails c`.

## Coding Tasks

For each of the following tasks you should create branch and a pull request.

Your branch should include specs that verify that your code behaves as expected.

Your pull request description should explain your changes and include steps to verify that your change works.

### Task 1

The product manager for this system wants to ensure that any newly added phone numbers are stored in valid international phone number format.

Create a new pull request against this repo that will ensure that any newly added phone numbers are valid international phone numbers.

### Task 2

The product manager for this system wants to change the behaviour of phone number and agent deletion so that they can be recovered in the future.

Create a new pull request that allows deleted phone numbers and deleted agents to be recovered.

There is no need to add 'recover' capability yet, just ensure that the phone number and agent are not hard deleted from the database.

### Task 3

A malicious agent was able to change their admin status from false to true.

Create a new pull request that will prevent agents from changing their status.

### Task 4

One of our very large customers has informed us that the phone call page is slow to load when there are thousands of calls, especially when filtering by status.

Create a new pull request that will improve the performance of this page.

## Review Task

There is an open pull request in this repo, #1. Please look at this pull request and review it.

Things that you should consider include:

* Does it work as described?
* Is it understandable?
* Is it well implemented?
* Is it well tested?
