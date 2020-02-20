Feature: Login
  Scenario: Valid email, valid password
    Given I open my login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then "New teacher Name" text appears
