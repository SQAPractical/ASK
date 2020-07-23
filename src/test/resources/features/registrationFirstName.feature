Feature: Registration
  Scenario: Latin characters
    Given I open "registration" page
    When I type first name "Abc"
    And I type last name "Tests"
    And I type email "jg@mail.ru" on registration page
    And I type group code "123"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears
  Scenario: First name field is required
    Given I open "registration" page
    When I type first name ""
    And I type last name "Tests"
    And I type email "jg@mail.ru" on registration page
    And I type group code "123"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "This field is required" appears
