
Feature: Registering a new account

    Scenario:Creating a new account beggining on the sign in page
        Given the user is on the Sign in page 
        When the user clicks on the redirect url
        And fills the username, email and password inputs
        And the user clicks on the sign up button
        Then it should redirect the user to the Home page

    Scenario:Creating a new account with valid credentials
        Given the user is on the Sign up page 
        When the user fills the username, email and password inputs
        And the user clicks on the sign up button
        Then it should redirect the user to the Home page

    Scenario:Creating a new account with already existing credentials
        Given the user is on the Sign up page 
        When the user fills the username, email and password inputs
        And the user clicks on the sign up button
        And the username and email already exists
        And it should present an error mensage to the user about this error
