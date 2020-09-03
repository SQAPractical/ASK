Feature: Registration First name
  Scenario: Registration Firstname - alpha numeric special characters
    Given I open "registration" page
    When I type first name "Praji1"
    And I type last name "ABC"
    And I type email "abctest@gmail.com" on registration page
    And I type group code "ABCD"
    And I type password "qwerty" on registration page
    And I type confirm password "qwerty"
    And I click register me button
    Then Text "You have been Registered" appears


