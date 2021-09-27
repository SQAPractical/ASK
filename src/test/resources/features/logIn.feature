@FullRegression
Feature: Log In
  @Smoke
  Scenario: Log In - With valid email/valid password
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button.
    Then Main menu appears

  Scenario: Log In - With invalid email/valid password
    When I navigate to login page
    And I type Email "t1eacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button.
    Then Message "Authentication failed" appears

  Scenario: Log In - With empty email/valid password
    When I navigate to login page
    And I click on Email field
    And I click on Password field
    Then Message "This field is required" appears

  Scenario: Log In - With valid email/empty password
    When I navigate to login page
    And I click on Password field
    And I click on Email field
    Then Message "This field is required" appears

  Scenario: Log In - Password in bullets, copy, cut disabled
    When I navigate to login page
    And I type Password "12345Abc"
    Then Password in bullets, copy, cut disabled

  Scenario: Log In - Email is case insensitive
    When I navigate to login page
    And I type Email "TEACHER1@GMAIL.COM"
    And I type Password "12345Abc"
    And I click Sign In button.
    Then Main menu appears

  Scenario: Log In - Password is case sensitive
    When I navigate to login page
    And I type Email "t1eacher1@gmail.com"
    And I type Password "12345abc"
    And I click Sign In button.
    Then Message "Authentication failed" appears

  Scenario: Log In - With leading space in login input field
    When I navigate to login page
    And I type Email " t1eacher1@gmail.com"
    And I click on Password field
    Then Message "Should be a valid email address" appears

  Scenario: Log In - With trailing space in login input field
    When I navigate to login page
    And I type Email "t1eacher1@gmail.com "
    And I click on Password field
    Then Message "Should be a valid email address" appears

  Scenario: Log In - With leading space in password input field
    When I navigate to login page
    And I type Password " 12345Abc"
    And I click on Email field
    Then Message "Whitespaces are not allowed" appears

  Scenario: Log In - With trailing space in password input field
    When I navigate to login page
    And I type Password "12345Abc "
    And I click on Email field
    Then Message "Whitespaces are not allowed" appears

  Scenario: Log In - With whitespace in the middle of login input field
    When I navigate to login page
    And I type Email " teac her1@gmail.com"
    And I click on Password field
    Then Message "Should be a valid email address" appears

  Scenario: Log In - With whitespace in the middle of password input field
    When I navigate to login page
    And I type Password "1 2345Abc "
    And I click on Email field
    Then Message "Whitespaces are not allowed" appears