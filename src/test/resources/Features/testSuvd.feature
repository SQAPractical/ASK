Feature: Login
  Scenario: Valid email and valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears

  Scenario: Invalid email and valid password
    Given I open "login" page
    When I type email "aaaabbbbbccc@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Authentication failed" appears
