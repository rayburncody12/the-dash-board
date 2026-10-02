# the-dash-board
Fitness tracking and utilities to progress running, cycling, and watersports

### app directory

| locator               | type   | purpose                         | dependencies |   |
|-----------------------|--------|---------------------------------|--------------|---|
| app.py                | python | handles HTTP routes             |              |   |
| database.py           | python | handles SQLite                  |              |   |
| services/strava.py    | python | talks only to Strava            |              |   |
| services/runsignup.py | python | talks only to Runsignup         |              |   |
| achievements.py       | python | calculates things from database |              |   |
| templates             | folder | produces HTML                   |              |   |
| static                | folder | CSS and JS                      |              |   |

### data

Database uses SQLite
foreign-key enforcement enabled by connection-level param
db.execute("PRAGMA foreign_keys = ON")

