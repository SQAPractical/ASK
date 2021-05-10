@fullRegression
Feature: User's management
  Scenario: User's management - Options in Teacher's account - Delete Teacher
  # Create student account
    When I navigate to registration page
    And I type First Name "Elis"
    And I type Last Name "Fox"
    And I type Email "o1@shabarshin.com"
    And I type Group Code "abc"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "You have been Registered." appears
  # Log In  with existing teacher account
    When I navigate to login page
    And I type Email "dsondos.mi@getpier.com"
    And I type Password "12345"
    And I click on Sign In button
    Then Text "Olgaa Teacher" appears
  # Change role to Teacher to existing account and Delete account
    And I click on User's Management button
    And I click on Elis Fox
    And click on Options button
    And click on Change User's Roll
    And click on Change Role button
    And click on Options button
    And click on Delete User button
    And click on Delete button
    And click on Teachers button
    And I verify that there is no teacher "Elis Fox"
