Feature: Registration - Email
  Scenario: Registration - Email - Correct format
    When I open "registration" page
    And I type first name "Serge"
    And I type last name "Ivanov"
    And I type email "test@gmail.com"
    And I type group code "777"
    And I type password "Abc123"
    And I type confirm password "Abc123"
    And I click Register me button
    Then Text "You have been Registered." appears