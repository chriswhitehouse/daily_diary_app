# daily_diary_app
Online diary app, for storing your daily journal entries.

## Motivation
A mini-project for testing learning of web apps with databases, using TDD, OOD, and MVC principles.

## Build status
Travis integration??

## Screenshots
Include logo/demo screenshot etc.

## Tech/framework used
Sinatra, with PostgreSQL database, tested with Rspec and Capybara.

## Features
#### User Story 1
```
As a user
So that I can keep a daily diary
I want to be able to add a new Diary Entry
```
|Class | Entry |
|---|---|
|Properties| id, entry|
|Actions| #new, .create |

![User Story 1 Class Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_1/class.svg)
![User Story 1 Entity Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_1/entity.svg)
![User Story 1 Sequence Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_1/sequence.svg)


```
As a user
So that I can identify my entry in future
I want to give each Diary Entry a title
```
|Class | Entry |
|---|---|
|Properties| id, title, entry|
|Actions| #new, .create |

![User Story 2 Class Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_2/class.svg)
![User Story 2 Entity Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_2/entity.svg)
![User Story 2 Sequence Diagram](https://github.com/chriswhitehouse/daily_diary_app/blob/main/diagrams/user_story_2/sequence.svg)
```
As a user
So that I can browse my previous entries
I want to see a list of Diary Entry Titles
```

```
As a user
So that I can read my previous entries
I want to click on a title to see the full Diary Entry
```



## Code Example
Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Installation
Provide step by step series of examples and explanations about how to get a development env running.

### Database Set Up
1. Connect to psql
2. Create a development database using the psql command `CREATE DATABASE daily_diary`;
3. Connect to the database using the psql command `\c daily_diary`;
4. Run the query we have saved in the file '01_create_entries_table.sql'
5. Create a test database using the psql command `CREATE DATABASE daily_diary_test`
6. Repeat steps 3 and 4 for the test database.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests
Describe and show how to run the tests with code examples.

## How to use?
If people like your project they’ll want to learn how they can use it. To do so include step by step guide to use your project.

## Contribute

Let people know how they can contribute into your project. A [contributing guideline](https://github.com/zulip/zulip-electron/blob/master/CONTRIBUTING.md) will be a big plus.

## Credits
Give proper credits. This could be a link to any repo which inspired you to build this project, any blogposts or links to people who contrbuted in this project.

#### Anything else that seems useful

## License
A short snippet describing the license (MIT, Apache etc)

MIT © [Yourname]()
