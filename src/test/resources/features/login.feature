Feature: Log In
  Scenario: Log In - Valid email / valid password
    When I navigate to login page
    And I type "student0@gmail.com"
    And I type Password "12345Abc"
    And I click sign-in button
    Then Text "New Jon Snow" appears

  Scenario: Log In - Invalid email / invalid password
    When I navigate to login page
    And I type "astudent0@gmail.com"
    And I type Password "a12345Abc"
    And I click sign-in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log In - Password displays in bullets, copy/cut disabled
    When I navigate to login page
    And I type Password "12345Abc"
    Then Password displays in bullets, copy and cut disabled

