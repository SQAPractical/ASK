@Registration
Feature: Registration Group - Code
  Scenario: Registration Group - Code - Alphanumeric and special characters
    When I navigate to the registration page
    And I type first name "Test"
    And I type last name "Ng"
    And I type email "123@gm.co"
    And I type group code "123"
    And I type password "12345"
    And I type confirm password "12345"
    And I click Register Me button
    Then I see the message "You have been Registered."


