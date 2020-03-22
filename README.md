# BookMD

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'BookMD'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install BookMD
    
## Statement of purpose    
BookMD is a mock online dr appointment booker. BookMD takes user input from an appointment selection as well as patient information and writes this to text files and reads these text files to display the selections back to the user. It also allows users to cancel their appointments and make a new appointment if they want to change the appointment time. BookMD will return the user to the home menu ten seconds after it completes the requested function and displays a message to confirm to the user it has completed the function and will return them 'home'.

## A problem BookMD helps to solve...
(...)is the dr selection process. Booking online isn't really any simpler or easier in terms of user experience and this is reflected in any online appointment booking app that most of us have used - but online booking can address some other issues people may have if attending a practice as a new patient. An app that displays dr availability and also provides profiles with Dr information, areas of interest and the like provides something that can't be done on the phone and allows for people (especially new patients) to select a practitioner they feel meets their needs as a patient. 

BookMD is just a mock appointment booker and isn't able to capture the dynamism or security necessary in a booking system and only aims to capture three key functions.

1 - take user input and store as patient details.

2- storing appointment selection using a selection menu. 

3 -allowing to cancel appointments the user has created.

## Usage

TODO: Write usage instructions here

## Development

## Features
 BookMD handles user input that generates two kinds of class objects - patient objects, and appointment objects.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Pathway
![UML diagram goes here](images/UMLflowdiagram.png)

Planning and development of project
![](images/Trelloboard.png)


![](images/older repo.png) this is my old repo - because I made this project a gem I created a new repo with the name of the application. 

##Testing

![](images/invalidinputissue.png) my app has a lot of bugs as things stand. 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/BookMD. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/BookMD/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BookMD project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/BookMD/blob/master/CODE_OF_CONDUCT.md).
