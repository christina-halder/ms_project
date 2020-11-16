# Marley Spoon Web Challenge

Simple Ruby on Rails Application which fetches Contentful data.

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

### Branches and Environments
We have three branches here development, staging and production. 
Development branch will be used for development environment branch, where developers
will merge their code from local branch and then deploy to development environment to 
test.


Staging environment will be used by Quality Assurance team. Once after
 developers are done with their development and testing on development environment 
 they will merge changes on staging branch which will be deployed to staging environment. 


Production branch will be used as a final release branch. 
