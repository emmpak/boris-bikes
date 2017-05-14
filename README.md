# Boris Bike Project

Welcome to the beginning of my web development journey at Makers Academy.

During week 1, we were given the task to build a network of docking stations and bikes that anyone can use. This program emulates all the docking stations, bikes and infrastructure required.

Below are some of the concepts that we used to complete the project:
* User stories
* Domain models
* Object-Oriented Programming
* Test-Driven Development
* Single Responsibility Principle

Technologies used:
* Ruby
* RSpec
* Git / GitHub

User Stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

Nouns in the User Stories
* User
* Customer
* Person
* Bike
* Docking station

Verbs in the User Stories
* Find the surname
* Release a bike
* Use a bike
* Bike is working?

| **Objects** | **Messages** |
|-------------|---------------|
| User            |                 |
| Customer        | find_by_surname |
| Person          | use_a_bike      |
| Bike            | working?        |
| DockingStation  | release_bike    |

```
Bike <-- working? --> true/false
DockingStation <-- relsease_bike --> a Bike
```
