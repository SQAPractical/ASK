Feature: login
  Scenario: login with valid email/ valid password
    When I navigate to login page
    And I type "student0@gmail.com"
    And I type Password "12345Abc"
    And I click on sign-in button
    Then text "New Jon Snow" appears

  Scenario: login with invalid email/ invalid password
    When I navigate to login page
    And I type "studentwet0@gmail.com"
    And I type Password "12345Abc"
    And I click on sign-in button
    Then text "Authentication failed. User not found or password does not match" appears

  Scenario: Log-in - Password displays in bullets, copy/cut disabled
    When I navigate to login page
    And I type Password "12345Abc"
    Then Password displays in bullets, copy and cut disabled