Feature: Log in
  Scenario: Log in - Valid email / valid password
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "New Jon Snow" appears

  Scenario: Log In - Invalid email / valid password
    When I navigate to login page
    And I type Email "studenawet0@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log In - Password displays in bullets, copy/cut disabled
    When I navigate to login page
    And I type Password "12345Abc"
    Then Password displays in bullets, copy and cut disabled

