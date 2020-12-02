# Group our transations.
This project is a simple app built using basic Ruby on Rails functionalities in this app you can create an account, and when logged in, you can create   groups and items to help you organize the items that you need to buy for a specific place or purpose.
For example: if you need to buy milk, you can create the group kitchen and say that you need milk by creating the item milk.

![Picture](app/assets/images/groups_page.jpg)

### Built with
Ruby v2.7.0
Ruby on Rails 6.0.3.4
Live demo link

## How to use the app
For you to try the app localy you can follow the next steps.

### Prerequisites
Ruby: 2.7.1
Rails: 6.0.0
Postgres: >=9.5
### set-up
Install all gems by running  `bundle install `
Create the database using `rails db:create `
Migrate the database with `rails db:migrate `
### Using the app
Once you have set-up the app you are ready to use it.
Run the server on your terminal with the command `rails server` by default the port is gonna be 3000 but if that port is not available you can run the server on a different port using `rails server -p 4001` where 4001 represents the port you choose.
After the server is up and running open your browser and go to `http://localhost:3000/`
### Testing the app with RSpec
You can run just by typing `rspec` in your console, take into consideration that the pre-loaded tests were created by a Microverse student, feel free to write your own tests.
### Other gems used
Hirb - for visualizing the databases on the ruby console.
Bootstrap - SCSS framework
Bullet - to solve n+1 issues

## Author
Adan Fernandez Bonilla

[Github](https://github.com/balerum03)
[LinkedIn](https://www.linkedin.com/in/adan-fernandez-bonilla/)
[Twitter](https://twitter.com/balerum03)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
