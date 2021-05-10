@fullRegression
Feature: Log In
  Scenario: Log in - Valid email / valid password
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "Jon Snow" appears
  Scenario: Log in - Invalid email / valid password
    When I navigate to login page
    And I type Email "student@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears
  Scenario: Log In - Password displays in bullets, copy/cut disabled
    When I navigate to login page
    And I type Password "12345Abc"
    Then Password displays in bullets, copy and cut disabled
  Scenario: Log in- valid email and valid mismatching password
    When I navigate to login page
    And I type Email "qa.sofi@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears
  Scenario: Log in- valid email and invalid password
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears
  Scenario: Log in - email - Leading and spaces not allowed
    When I navigate to login page
    And I type Email "  student0@gmail.com"
    And I press ENTER
    Then Text "Should be a valid email address" appears
  Scenario: Log in - Email-Trailing spaces not allowed
    When I navigate to login page
    And I type Email "student0@gmail.com  "
    And I press ENTER
    Then Text "Should be a valid email address" appears
  Scenario: Log in - password - Trailing spaces are not allowed
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc  "
    And I press ENTER
    Then Text "Whitespaces are not allowed" appears
  Scenario: Log in - Password-Leading spaces not allowed
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "  12345Abc"
    And I press ENTER
    Then Text "Whitespaces are not allowed" appears
  Scenario: Log in- Email field Case insensitive
    When I navigate to login page
    And I type Email "stUdEnt0@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then Text "New Jon Snow" appears
  Scenario: Log in- PWD field Case sensitive
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345aBc"
    And I press ENTER
    Then Text "Authentication failed. User not found or password does not match" appears
  Scenario: Log in-Password displays input in bullets
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then Password displays in bullets
  Scenario: Log in- "Cut" menu item on "Password" field is disabled
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    And I Highlight the password
    And I Press COMMAND + X on your keyboard
    Then Copy fails
  Scenario: Log in- "Copy" menu item on "Password" field is disabled
    When I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    And I Highlight the password
    And I Press COMMAND + C on your keyboard
    Then Copy fails

