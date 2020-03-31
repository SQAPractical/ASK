Feature: Registration - Group Code
  @Sanity @Acceptance @Sofia1234
  Scenario: Registration - Group Code - alphanumeric and special char
    Given I navigate to registration page
    When I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "emailmm@gmail.com"
    And I type group code "abc13#"
    And I type password "12345"
    And I confirm password "12345"
    And I click "Register Me" button
    Then message "You have been Registered." appears

  @Sanity
  Scenario: Registration - Group Code - field is required
    Given I navigate to registration page
    When I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "email@gmail.com"
    And I type group code ""
    And I type password "12345"
    And I confirm password "12345"
    And I click "Register Me" button
    Then message "This field is required" appears
