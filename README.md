# Skolera Task

```
# install gems
$ bundle install

#Update rake (Mine maybe newer)
$ bundle update rake

# setup the database
$ bundle exec rake db:setup

# run the server
$ rails s


## Solving Tasks

```
1-[basic_phone_validation] Phone Number Validation 

```
Using ```regular expression``` in phone number model to validate if value of number attribute is a valid international phone number format.

```
2-[prevent_hard_delete] Prevent hard deletion of phones and agents 

```
Using ```Paranoia Gem``` re-implementation of acts_as_paranoid in both models (phone number and agents) [Link](https://rubygems.org/gems/paranoia/versions/2.1.5).
I used include method in phone call model to avoid null values of phones and agents. 

Note: I did not use boolean field in database to check deleted or not becouse paranoid provide that in easy way an it is more performance.   

```hint -> i did not try soft deletion to phone calls which its agents or phone number is deleted becouse maybe help in analysis objectives.```

```
3-[bad_agent] Prevent agents from changing permissions

```
Added new private method called ```agent_update_params``` for agents which only permit name,status pass to update method.


```
4- [phone_calls_performance] Phone Calls listing page is too slow 

```
I use include method becouse Include use eager loading whereas join(the previous way) use lazy loading so it can access the agents and phone numbers attributes of the phone call model without firing an additional query [Link](http://tomdallimore.com/blog/includes-vs-joins-in-rails-when-and-where/) .



