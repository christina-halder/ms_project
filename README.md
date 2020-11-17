# Marley Spoon Web Challenge

Simple Ruby on Rails Application which fetches Contentful entries and display it.

## Description
The project is developed based on the requirement given by Marley Spoon. 
The landing page of the project will list down all the recipers of Merley Spoon from environment master. List page containsr recipe title and picture.
Each item of the link is clickable. Clicking on each of the link will take you to the details page of the recipe. Details page shows recipe title, image, list of tags joined by separating by commas (,), description and Chef name (if available).


## Branches and Environments
We have three branches here development, staging and production. 
Development branch will be used for development environment branch, where developers
will merge their code from local branch and then deploy to development environment to 
test.


Staging environment will be used by Quality Assurance team. Once after
 developers are done with their development and testing on development environment 
 they will merge changes on staging branch which will be deployed to staging environment. 


Production branch will be used as a final release branch. 


## Prerequisite
A system with Ruby and Rails installed

## Setup
* Clone the project

```bash
git clone project_link
```

* Install bundler

```bash
gem install bundler
```

* Install dependencies

```bash
bundle install
```


* Run Server

```bash
bundle exec rails s
```

## Viewing Data

Click on the url that has been provided on the console (default http://localhost:3000
). Here all the recipes are listed down. 
Click on a recipe, and it will take you to the details page of the recipe. 

Happy browsing :)

