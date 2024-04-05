

Feature: Login

    Scenario: Login with right credentials
        Given the Sign in page
        When the user already have an account
        And it should fill the Email and Password field and click on the button Sign in
        Then it should be redirected to the home page

    Scenario: Login with wrong credentials
        Given the Sign in page
        When the user already have an account
        And it should fill the Email and Password field wrong and click on the button Sign in
        Then it should present the error mensage email or password is invalid


