# README



This application was built using Rails, the Ruby framework, Ruby version '2.4.4'.
The app consists of three models: Users (created with the gem devise, that will prompt users to
sign up/sign in), Influencers, which did not need all the CRUD methods, since we'll be using a
seed, and a joint table called Starred_Influencers, which basically works as a ' wishlist'.
The instances are saved into an SQLite database (version sqlite 3). To verify if the data is stored
locally the command 'rails console'  can be used in the console: 'Users.last'  would retrieve the newest
instance of Users, for example. The entire app can be test-run on localhost (console 'rails server'), make sure to migrate and feed the seed ('rails db: migrate' and 'rails db:seed'). When the application is opened, it will prompt
to create a new user (email and password, create a new user or use 'user@new.com' password: '123456') to gain access to the influencerlist.
Note: make sure to run the app from the folder 'influencerlist'.

The application allows the user to pick influencers to add to the starred influencer list. Starred influencers can be removed. The dropdown menu lets the user sort the starred influencer list with different filters. On the left hand side, suggestions for more new influencers are given to add to the starred influencer list.


This challenge was a great opportunity to apply the experience I have from the applications I built before, and to
practise creating a one-page app and using a filter rather than a search option with params. I hope this readme contains all the information needed. Please do not hesitate to contact me if clarification is necessary.
Due to the given time frame and the purpose, the front-end part of this application remains modest, and security is not optimal.


