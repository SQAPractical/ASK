@Smoke
Feature: Log out

  Scenario: Valid email, valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Sofia Teacher" appears

  Scenario: Valid email, invalid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "abcdef"
    And I click Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: password field required
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I click Sign in button
    Then Text "This field is required" appears

  Scenario: whitespaces in email not allowed
    Given I open "login" page
    When I type email " qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Should be a valid email address" appears

  Scenario: password displays in bullets, copy, cut options disabled
    Given I open "login" page
    And I type password "12345"
    Then password displays in bullets, copy, cut options disabled
