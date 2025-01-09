# Momentos
Capture, Share et Keep memories of past events

## App

The App is called Momentos to retrieve or add Photos of events that took place with you and your friends.
First the one who initiates the event generate an invitation code.
The goal is for people with or without an account to join an event and start sharing photos.

## Product

### Vision
The goal of the prodcuts is to centralize good moments between people and close or public friends.
Be the platform and app to get crusty details of an app via photos and later videos.

### What's my product job to be done?
Scale the app for support more locales, more countries of availabilities.
Introduce IAP (In App Purchase) for admin rights, more events creations, unlimited sharers in an event...
Notifications for event creations, photos added, reminders to post photos.
Best photo vote as the thumbnail of the event

### How I the product is going to make $1B ?
Like what is being done on Instagram, we should define influencers or personnalities to use the app.
They will be able to create some albums.
We should also open subscriptions and be able to view some photos of our "stars" through and 

Theme campaigns:
With theme campaigns and notifications, we can open campaign to have people post photos and get some prizes.

Internationalization: open to more and more locales/countries

Representation: Be inclusive

Subscriptions: To communities

## Prototype

Fosucing on just photo, the app let you enter an invitation code of an event, if it is valid

### Architecture

The code is splitted into four layers:

#### Presentation Layer
It is also called User Interface Layer or UI Layer.
This layer is responsible for showing information to the user and interpreting the user’s actions. 

#### Application Layer
Defines the jobs the software is supposed to do and directs the expressive domain objects to work out problems. The tasks this layer is responsible for are meaningful to the business or necessary for interaction with the application layers of other systems. This layer is kept thin. It does not contain business rules or knowledge, but only coordinates tasks and delegates work to collaborations of domain objects in the next layer down. It does not have state reflecting the business situation, but it can have state that reflects the progress of a task for the user or the program.

#### Domain Layer

Responsible for representing concepts of the business, information about the business situation, and business rules. 
It is a state that reflects the business situation is controlled and used here, even though the technical details of storing it are delegated to the infrastructure. 
This layer is the heart of business software.

#### Infrastructure Layer

Provide generic technical capabilities that support the higher layers: message sending for the application, persistence for the domain, drawing widgets for the UI, etc. 
The infrastructure layer may also support the pattern of interactions between the four layers.

#### Overall architecture pattern
The code follows an MVVM architecture with code splitted into those 4 layers.

More precision can be explained during debrief.
    

### Notable achievements

OnboardingScreen: Nice animated screen with what the app is about. (

InvitationScreen: Please type "1234" to have a valid code

EventScreen: List of events where you can add photos.

FeedEventScreen (as detail of the EventScreen): all the photos of the event with a column customizable component, 
and `Edit` functionnality

PickerScreen (View that integrates PhotoKit to pick a photo to add to the event).
