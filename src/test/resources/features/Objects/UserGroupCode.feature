Feature: User - group code
  Scenario: User - group code - Alphanumeric and sp char
    Given I navigate to "registration" page
    When I type first name "test"
    And I type last name "Ivanov"
    And I type email "test@test.gmail" on "registration" page
    And I type group code "abc123#$"
    And I type password "12345" on "registration" page
    And I type confirm password "12345"
    And I click Register me button
    Then "You have been Registered." message appears
  