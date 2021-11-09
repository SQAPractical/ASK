@FullRegression
Feature: User's management - Options in Teacher's account - Delete
  Scenario: Options in Teacher's account - Delete Teacher's account
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Doe"
    And I type my email "test@gmail.com"
    And I type group code "0"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears
    And I click Back to Login Page button
    And I navigate to login page
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Management" on left menu
    And I select student "John Doe" on Users Management page
    And I click on options button
    And I click Change User's Role
    And I click on Change Role button
    And I click on options button
    And I click on Delete User
    And I click on Delete button
    Then I delete Teacher "John Doe"
