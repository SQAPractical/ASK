#Created by Almir 10/23/20
Feature: Forgot password

  Scenario: Verify that user can reset password and Sign In with New Password
    Given I open "login" page
    And I click I forgot my password
    And I type email "udjbritinho3@urbanquarter.co" on Reset Password Request page
    And I click Request Password Reset
    And I navigate to my email generator page
    And I click on last incoming message
    And I click Reset Password
    And I type new password "12345"
    And I confirm password "12345"
    And I click on Reset button
    And I click Back To Login Page
    And I type email "udjbritinho3@urbanquarter.co" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Forgot Password" appears

  Scenario: Verify that will NOT send verification email to not corresponding/valid email
    Given I open "login" page
    And I click I forgot my password
    And I type email "dogasomer@gmail.com" on Reset Password Request page
    And I click Request Password Reset
    Then Pop-up window appears with message: Authentication failed. User not found or password does not match



