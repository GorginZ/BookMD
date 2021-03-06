# BookMD

## Installation

```
gem install 'BookMD'
```

And then execute:

    $ bundle install
    
Dependencies:
    
        "fileutils", "~> 1.4.1" 
        "simplecov", "~> 0.9.0"
        "jeweler", "~> 2.3.9"
        "tty-table", "~> 0.11.0"
        "tty-box", "~> 0.5.0"
        "tty-prompt", "~> 0.21.0"
                
    
## Statement of purpose    
BookMD is a mock online dr appointment booker. BookMD takes user input from an appointment selection as well as patient information and writes this to text files and reads these text files to display the selections back to the user. It also allows users to cancel their appointments and make a new appointment if they want to change the appointment time. BookMD will return the user to the home menu ten seconds after it completes the requested function and displays a message to confirm to the user it has completed the function and will return them 'home'.

## A problem BookMD helps to solve...
(...)is the dr selection process. Booking online isn't really any simpler or easier in terms of user experience and this is reflected in any online appointment booking app that most of us have used - but online booking can address some other issues people may have if attending a practice as a new patient. An app that displays dr availability and also provides profiles with Dr information, areas of interest and the like provides something that can't be done on the phone and allows for people (especially new patients) to select a practitioner they feel meets their needs as a patient. The target audience for BOOKMD is anyone looking online for a new GP.

## BookMD and ethical issues
Any real appointment booker handling personal information and health information raises obvoius issues about how the data is stored, obtained and accessed, these are fairly broad and well understood issues so instead I would like to aknoelrdge this but instead comment on issues that would be specific to a medical appointment services (given my app is a mock booker and isn't actually handling data). 

The aim of BookMD is to make appropriate care more accessible by allowing practices to have profiles for their GPs and help people find care more appropriate for them. Many women or chronic pain sufferers struggle navigating the medical industry and landing themselves a good regular GP because you just have to go and see what they're like - reviews aren't particularly useful and can often be misguided if people just didnt like the dr on an interpersonal level - what can be ueful is GPs who have special areas of interest being able to state their history and experience clearly in a profile. BookMD in the spirit of this goal would also not allow non-bulk billing practices or practices that don't do workcover or tac work to use their platform.


## Usage

To run open terminal, run:
    
        "irb" 
        
Then:
    
        require "BookMd"         

OR download all files and open the executable app in: 

BookMd/bin

BookMD starts at a home menu with three pathways.

<img src="images/firstmenu.png" width="400" >

1 book appointment allows the user to view dr availability and select a dr, followed by appointment day via the same menu format.

<img src="images/bookappointment1.png" width="400" >

user then selects a time

<img src="images/timeselect.png" width="250" >

The appointment is displayed to the user and the user inputs their details which are written to a file.


<img src="images/patientinfo.png" width="400" >
<img src="images/eg.appointment.png" width="400" >

If the user selects option 2 after they return to the home menu they are able to view their new appointment

<img src="images/upcoming.appointments.png" width="400" >

If the user selects option 3 their appointment is deleted and they are returned to the home menu.

## Development

## Features

BookMD is just a mock appointment booker and isn't able to capture the dynamism or security necessary in a booking system but aims to capture three basic key functions through the executable console app:

## 1 - take user input and store as patient details in text file.
the make_patient method is called when the user progresses through the book appointment pathway. This method initializes a new object of the Patient class and assigns the attribute variables for name, phone, email and travel via gets-ing user input. 
The scope of the Patient class instance variables means I am able to attribute these values to new objects of this class in the make_patient method, as they are visible to the make_patient method. The make_patient method is called in the printer method, where I use the append flag in order to add the patients hash (variable) and it's new_patient objects into into the patients.txt file.

Jesus Castello's contributions in Ruby guides provided a helpfulguide to passing flags through the command line when working with files in ruby code:

https://www.rubyguides.com/2015/05/working-with-files-ruby/

<img src="images/patientcreation.png" width="400" >

## 2- creating and storing appointment (DR, day and time) using a selection menu. 
The appointment is initialied as an object of the Appointments class. It's instance variables get their values from these methods below. I utilised the TTY gems TTY prompt's select and multi_select to get user input. These methods run if the user selects the Book Appointment pathway which utilizes a case conditionasl when loop as the pathway flow controller. I utilized the TTY prompt for my selection to eliminate the issue of invalid or accidental input from the user, and given the choices are always going to be fixed - based on the availability of appointments on particular days, this seemed appropriate. 

More about the TTY toolkit can be found here:
I utilized a number of the tty gems - prompt and table are the only I ended up keeping in my final app in the end

https://ttytoolkit.org/
https://medium.com/@reireynoso/tty-prompt-select-for-handling-user-inputs-aed13f46c8bc

<img src="images/caseloop.png" width="400" >
<img src="images/appointment.info.png" width="400" >



## 3 Managing appointments
 Users are able to view the appointments they have made and delete them. The conditional loop seen above will run the delete appointment method if the user input is '3' in the main selection menu. The delete method runs, opens the appointments text file and deletes (using the out_file file method) the line with the appointment. I have had trouble with this deleting all appointments if there are multiple appointments, however.
 
 I modified a block of code suggested in this forum where someone had a similar question to me. 
 https://stackoverflow.com/questions/37515509/how-to-delete-specific-lines-in-text-file
 
<img src="images/deleteappointment.png" width="400" >

Pathway
<img src="images/UMLflowdiagram.png">


Planning and development of project
<img src="images/Trelloboard.png">

this is my old repo - because I made this project a gem I created a new repo with the name of the application. 
<img src="images/older repo.png">


## Testing
I was unable to write a good rspec test due to time constraints, but was able to manually test throughout and have other people use my app who were unfamiliar with the pathways.

One point of failure that are easily able to be reproduced are the error when the user provides invalid input in the first menu.

Another is that the app deletes all appointments instead of just the last appointment, although this isn't so much an error as just a bad way to delete. 

<img src="images/invalidinputissue.png" width="400"> 



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/BookMD. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/BookMD/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BookMD project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/BookMD/blob/master/CODE_OF_CONDUCT.md).
