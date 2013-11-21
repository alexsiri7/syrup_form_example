==Syrup::FormObject example

This is a rails application that works as an example of [Syrup::FormObject](https://github.com/alexsiri7/syrup_form_object). 
The relevant forms are in app/forms.

==Description

This is a simple application for creating Events. In order to keep it extra simple, the application
has no user management. 

The main example is the Editing of events. In the database, the Events are stored with a start_date and an
end_date. But for the UI, the users edit the Start date and the duration, which is then converted. 

The EventForm does the validation and conversion. 
