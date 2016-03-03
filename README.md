### Travel Journal

[Travel Journal Deployed on Heroku](http://mytravel-journal.herokuapp.com/)

Technologies Used:

- Sinatra
- Ruby
- Javascript
- jQuery
- Mapbox
- Heroku
- Facebook API for authentication

Pending:

- Facebook API for Sharing and fetching Check-in


#### Project Description

Travel Journal website (TJW) is an online journal where a user can record details of the trip and mark it private or share it with friends.

#### User Stories

| Description | Status |
|-------------|--------|
| As a user I want to see the homepage of travel journal website. | Completed |
| As a user I want the sign up functionality to create a valid user of TJW | Completed|
|Add validation to the sign up process| Not Started|
| As a user I want to login into travel journal website. | Completed |
| As a user I want to record my firstname. | Completed |
| As a user I want to record my lastname. | Completed |
| As a user I want to record my email. | Completed |
| As a user I want to record my facebook ID. | Completed |
| As a user I want to record my Username. | Completed |
| As a user I want to record my password. | Completed |
| As a user I want my password to be crypted when saved| Not started|
| As a user I want to protect my password. | Not started |
| Plan your journey suggestions from TJW||
|fetching photos from different website|
|get the info about the place from wiki, blog travel guides etc...|
| fetch personal pictures with geolocations|
| identifying from picture the location| ***Check if this can be done.
| picture book print out|
| design scrapbook|


http://stackoverflow.com/questions/13955813/how-can-i-view-and-store-images-in-firebase

1. For smaller images (under 10mb)

We have an example project that does that here: https://github.com/firebase/firepano

The general approach is to load the file locally (using FileReader) so you can then store it in Firebase just as you would any other data. Since images are binary files, you'll want to get the base64-encoded contents so you can store it as a string. Or even more convenient, you can store it as a data: url which is then ready to plop in as the src of an img tag (this is what the example does)!

