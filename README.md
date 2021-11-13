## CAPSTONE II DOCUMENTATION AND SUBMISSION 
(11/11/2021)

### Capstone title: Quotable
### Found here: https://ludicrous-trick.surge.sh/

### What Quotable Does
My final capstone is meant to show quotes from famous authors, poets, celebrities, and fellow users of the site.

### Features
When a user is logged out or hasn't created an account, they can view a collection of quotes pulled from the API on the landing page, and view a Quote of the Day.
When a user is logged in, they can search for certain quotes and certain authors. They can add quotes as "favorites", which will show as a list in their Profile tab.
Users can update their user info as well in the Profile tab. 
Users can even post their own quotes in the Community page.
There is also an About tab, including more links regarding the developer(myself). In case viewers wanted to see my LinkedIn, the APIs, and more info on Springboard.

### Tests
Tests for the components are in both the frontend and the backend repositories. 
They can each be run by command "npm test" in the terminal.

### Standard User Flow
The first thing you see on the landing page is 50 quotes pulled from zenquotes.io. You can only view them if you are not logged in. There is also a Quote of the Day tab and an About tab. Sign in and Login buttons are near the top. 
When you login, you see more tabs in the Navbar. You can view authors, and quotes in two different tabs. For Authors, you can click on one and it shows which quotes are from that author. Each quote card has a "Favorite" button. When you "favorite" a quote, it appears in your Profile tab. You can also update your user info in that tab as well.  In the Community Quotes tab, you are able to view quotes posted by other users, and even post your own quotes.
The logout button is to the right. And when you logout, it brings you back to the landing page where you see the 50 quotes.

### Standard User Flow
I used [Good Quotes API](https://goquotes.docs.apiary.io/#) for the main quote list on the Home page. Then I used [They Said So®](https://theysaidso.com/) for the Quote of the Day.
I am technically calling from my own API for the authors and quotes that are searchable. All the info is populated through a seed file. But most of the data for the seed file is taken from Zen Quotes.

### Tech Stack
Quotable is built with PostgreSQL, Express.js, React, Node.js and deployed with Heroku.

### Final Thoughts
This was indeed more difficult and time-consuming than the first capstone.
But this one, I'm glad I was able to implement the stretch goal: Favoriting. I had that as a stretch goal in my previous capstone and wasn't able to implement it. Here, I was able to. 🥰

__________________________________________________________

## CAPSTONE II PROJECT PROPOSAL
(10/07/2021)

#### API Links
They Said So Quotes API:
https://quotes.rest/ 

Zen Quotes API:
https://zenquotes.io/ 

UI design:
https://www.figma.com/file/gVh1o08fMIIiY2VSdu5nwb/Quotes-app?node-id=0%3A1 


### Tech Stack
My last capstone will be built with React and Node, the most recent languages learned. The goal is to create a full-stack application, showcasing my skills for front and backend development. 

### The Goal 
This will be a website showing off famous quotes. Users when not signed in, will be able to browse famous quotes, and see a quote of the day. When signed in, users can create their own posts for quotes, and view quotes other users have posted. 

### The Demographic
This website can really be used by anyone seeking to gain some inspiration from famous poems, speeches, or sayings.

### Data
I may be using more than one API, because there are a couple APIs that offer famous quotes that I like. They could be used to select random quotes, show famous quotes. The area where users can post their own quotes will be calling from my own API, at least to start off with. 

### Database Schema
The database schema will need to have tables for the user, and the user quotes. 
Each tab will allow the user to view different things like famous quotes, or user quotes, or the Quote of the Day.

### Potential API issues
The APIs I found have a searching capability, that will allow for a user to search for quotes by a certain author. I have not been able to successfully use that when testing my API in Insomnia/Postman. It's like the method doesn't work the way they advertise it to do so.

### Stretch Goals
It would be great, with time permitting, to have a "like" capability for all the quotes. Since it is not the same as "favorting" an item like I attempted in my last capstone, this will be a new (and challenging) learning opportunity.

