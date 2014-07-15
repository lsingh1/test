@login
Feature: Login 


Scenario: Log in as a user
Given I visit the homepage
When I enter the login details
Then I should be logged into the site