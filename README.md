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

* API calls

Request all movements
GET - /movements.json 

Request individual movements
GET - /movements/:id.json

Create new movement
POST - /movements.json   params(:id, :name)

Delete a movement
DELETE - /movements/:movement_id.json 

Update a revolution
PUT/PATCH -  /movements/:movement_id.json 

Request all tasks 
GET - /movements/:movement_id/tasks.json

Request individual tasks
GET - GET    /movements/:movement_id/tasks/:id.json  

Create new task
POST - /movements/:movement_id/tasks.json   params(:id, :name, :text_build, :link, :type, :order_number)

Delete a task
DELETE - /movements/:movement_id/tasks/:id.json 

Update a task
PUT/PATCH -  /movements/:movement_id/tasks/:id.json 

Request all revolutions 
GET - /movements/:movement_id/revolutions.json params(:id, :repeater_vals, :total_seconds, :status)

Request individual revolutions
GET - GET    /movements/:movement_id/revolutions/:id.json  

Create new revolution
POST - /movements/:movement_id/revolutions.json   

Delete a revolution
DELETE - /movements/:movement_id/revolutions/:id.json 

Update a revolution
PUT/PATCH -  /movements/:movement_id/revolutions/:id.json 


