Feature: Login
  Scenario: Valid email, valid password
    Given I open my login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then "New teacher Name" text appears

  Scenario: Valid email, invalid password
    Given I open login page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "123456" on login page
    And I click Sign in button
    Then "Authentication failed. User not found or password does not match" text appears

  Scenario: Invalid email, valid password
    Given I open login page
    When I type email "qa.sofi@gmail.comas" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then "Authentication failed. User not found or password does not match" text appears

  Scenario: password displays in bullets
    Given I open login page
    And I type password "123456" on login page
    Then password displayed in bullets