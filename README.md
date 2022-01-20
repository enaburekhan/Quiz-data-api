# quiz-data-api
The quiz data api allows customers to fill in a form of their beauty products brands, history, and products ingredients and submit the data from the frontend to the database. To access the react-redux frontend, go to [quiz-data-app]()

## Built With

- Ruby v3.0.0
- Ruby on Rails v7.0.1
- JWT
- rspec 5.0


### Project features

- A user can signup and login
- A logged in user can fill-in the form and create quiz-data
- A logged in user can update the form
- A logged in user can show lists of the quiz-data.


## API endpoint 

[quiz-data-api]()

## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup   

The project repository can be found in [GitHub link](https://github.com/enaburekhan/Quiz-data-api.git) or just clone the project using this command.


Open terminal on your workspace with
cd /home/workspace/quiz-data-api

### Installation

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage   

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> If the test suite passes, you'll be ready to run the app in a local server:

# Deployment
To deploy to heroku first login in heroku

### heroku login
Create a new project in heroku

### heroku create
You can verify that the remote was added to your project by running:

 - git config --list | grep heroku 
 - git push heroku master 

### Migrate your database

heroku run rails db:migrate
heroku run rails db:seed

### Tools used on this project
- Visual Studio Code
- Rubocop for Visual Studio Code

## Author

👤 **Eric Enaburekhan**

- Github: [@enaburekhan](https://github.com/enaburekhan)
- Twitter: [@enaburekhaneric](https://twitter.com/enaburekhaneric)
- Linkedin: [@ericenaburekhan](https://www.linkedin.com/in/eric-enaburekhan-801a28100/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Many thanks to the Open source community for given me access to OSS tools.




