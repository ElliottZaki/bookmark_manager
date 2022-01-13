README & user stories file

# Project Title:
Bookmark_manager Challenge

# Motivation: 
Attempt to complete week (4) - Pair partner week challenge with the aim to further  reinforce learning outcomes from week 3 & to build a database. 
- Build a simple web app with a database (this primary goal breaks down into the two sub-goals below)
- Follow an effective debugging process for database applications
- Explain the basics of how databases work (e.g. tables, SQL, basic relationships)
- Main focuses for this week
- Agile and TDD
- Engineering and 'Dev Recipes'
- Databases
- Tooling

# Installation:
- git clone git@github.com:[ElliottZaki]/bookmark_manager.git
- cd bookmark_manager
- RVM: ruby-3.0.2
- bundle
- rspec 
- rubocop '1.20'
- rackup

# Notable sources & references
https://ruby-doc.org/

# Build status:
Start
README.MD
Testing stage

# Project:
We are going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

# Project features:
- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks


# User story Template:
As a <Stakeholder>,
So that <Motivation>,
I'd like <Task>.

# User story 1:
As a User
So that I can see all my favourite websites.
I'd like to see a list of all my bookmarks.
____________________
noun     |   verb
---------|----------
User     | see
website  | favourite 
bookmarks| list 

bookmark ---> .list ---> websites.


# Refractoring to MVC:
| Component   | Responsibility                              | Refactor                        |
|------------ |---------------------------------------------|---------------------------------|
| Model       | Encapsulate logic with relevant data        |                                 |
| View        | Display the result to a user                | Show the bookmark data in a list|
| Controller  | Get data from the model and put in the view | Render bookmark data into to the view

# Instructions to connect to local server:
- cd /Users/elliottzaki/Desktop/Projects/bookmark_manager
- type rackup on command line.
- On your browswer, connect to localhost(9292)

# Database creation instructions: 
- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmarks;
- Connect to the database using the pqsl command \c bookmarks;
- Run the query saved in the file 01_create_bookmarks_table.sql


# User story 2:
As a frequent user of the Internet
So I can store one of my favourite websites to visit later
I want to add new bookmarks to my Bookmark Manager

____________________
noun     |   verb
---------|----------
User     | add
website  |  
         |  

bookmark_manager ---> .add ---> bookmark. -->


