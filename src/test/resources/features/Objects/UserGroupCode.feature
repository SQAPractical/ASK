Feature: User - group code
  Scenario: User - group code - Alphanumeric and sp char
    Given I navigate to "registration" page
    When I type first name "test"
    And I type last name "Ivanov"
    And I type last name "name"
    And I type email "name@name.com"
    And I type group code "abc123#$"
    And I type password "12345"
    And I type confirm password "12345"
    And I click Register me button
    Then "You have been Registered." message appears
  