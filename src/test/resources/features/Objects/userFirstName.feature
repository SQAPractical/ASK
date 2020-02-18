Feature: User - First Name

  Scenario: User - First Name - Alphanumeric and Special characters
    Given I open registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "exampletest@gmail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
