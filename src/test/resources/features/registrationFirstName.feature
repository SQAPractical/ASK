Feature: registration first name
  Scenario: registration first name - alpha numeric characters
    Given I open "registration" page
    When I type first name "Naadiya123#"
    And I type last name "Rasheed"
     And I type email "naadiya.rasheed+auto@gmail.com" on registration page
    And I type group code "AAA"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click register me button
    Then Text "You have been Registered." appears


