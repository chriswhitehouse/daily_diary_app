#Diagram.Codes

## User Story 1
### Sequence Diagram
alias client="Client"
alias controller="app.rb"
alias model="diary.rb"
alias views="Views"
alias db="daily_diary Database"


client->controller: "get '/diary/new' request"
controller->views: "erb :diary/new"
views->controller: "new.erb"
controller->client: "new.html response"
client->controller: "post /diary request"
controller->model: ".create(with params)"
model->db: "INSERT INTO entries table"
db->model: "RETURN entry"
model->controller: "'post /diary'"
controller->controller: "redirect 'get /diary/confirmation'"
controller->views: "erb :diary/confirmation"
views->controller: "confirmation.erb"
controller->client: "confirmation.html response"

###table definitions
TABLE "entries" as entries:
PK"id"
"entry"

###basic class definition
CLASS "Entry" as Entry:
"id"
"entry"
"new()"
".create()"
