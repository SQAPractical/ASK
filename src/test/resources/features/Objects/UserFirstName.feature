Feature: User - First name
  Scenario: User - First name - Alphanumeric and special char
    Given I open registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "Ivan@mail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    And I wait for 5 sec
 Then "You have been Registered" message appears