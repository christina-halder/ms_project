# Marley Spoon Web Challenge
This is Simple Rails and Contentful Application.
This application is for fetching Contentful data from Marley Spoon APIs.

[Contentful](https://www.contentful.com) provides a content infrastructure for digital teams to power content in websites, apps, and devices. Unlike a CMS, Contentful was built to integrate with the modern software stack. It offers a central hub for structured content, powerful management and delivery APIs, and a customizable web app that enable developers and content creators to ship digital products faster.


## Description


The project is developed based on the [requirement](https://gist.github.com/lawitschka/063f2e28bd6993cac5f8b40b991ae899) given by Marley Spoon. 
The landing page of the project will list down all the recipes of Marley Spoon from environment 'master'. List page
 contains recipe title and picture.
Each item of the link is clickable. Clicking on each of the link will take you to the details page of the recipe.
Details page shows recipe title, image, list of tags joined by separating by commas (,), description and Chef name
  (if available).


## Branches and Environments
We have three branches here development, staging and production. 
 Development branch will be used for development environment branch also the base branch for this project, where developers
 will merge their code from local branch and then deploy to development environment to 
 test.
 

Staging environment will be used by Quality Assurance team. Once after
 developers are done with their development and testing on development environment 
 they will merge changes on staging branch which will be deployed to staging environment. 


Production branch will be used as a final release branch. 


## Prerequisite
A system with Ruby (2.3.0) and Rails installed


## Setup
* Clone the project

#### Clone the repository

```ruby
git clone https://github.com/christina-halder/ms_project.git
```

#### Navigate into the repository's directory

```bash
cd ms_project
```

#### Install dependencies

* Install bundler

```bash
gem install bundler
```

* Install dependencies

```bash
bundle install
```

#### Create and Seed Database

```bash
bundle exec rake db:create db:migrate db:seed
```

#### Run the Server

```bash
bundle exec rails s
```

## Viewing Data

Click on the url that has been provided on the console (default http://localhost:3000
). Here all the recipes are listed down. 
Click on a recipe, and it will take you to the details page of the recipe. 

Happy browsing :)

## Tests

Run RSpec tests by

```bash
rake db:setup
bundle exec rspec
```
