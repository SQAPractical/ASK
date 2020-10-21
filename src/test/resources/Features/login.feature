<<<<<<< HEAD:src/test/resources/features/login.feature
Feature: Log in
  Scenario: Login valid email, valid password
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Sofia Teacher" appears

  Scenario: Login valid email, invalid password
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345gg" on login page
    And I click Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario Outline: Leading and trailing spaces in  email and password
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    Then Text <text> appears
    Examples:
      | pageName | email               | password | text                              |
      | "Login"  | " qa.sofi@gmail.com" | "12345"  | "Should be a valid email address" |
      | "Login"  | "qa.sofi@gmail.com  " | "12345"  | "Should be a valid email address" |
      | "Login"  | "qa.sofi@gmail.com" | " 12345"  | "White space not allowed" |
=======
Feature:  Login
>>>>>>> master:src/test/resources/Features/login.feature

  Scenario: Login - valid email, valid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    Then Text "TEACHER" appears

  Scenario: Login - valid email, invalid password
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345gv" on login page
    And I click Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Login - invalid email, valid password
    Given I open "login" page
    When I type email "qa.sofia@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Login - Password displays in bullets, Copy, Cut disable
    Given I open "login" page
    Then Password displays in bullets, Copy, Cut disable

  Scenario Outline: Leading and trailing spaces in Email and password
    Given I open "login" page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign in button
    Then Text <text> appears
    Examples:
<<<<<<< HEAD:src/test/resources/features/login.feature
     | email                | password  | text            |
     | " qa.sofi@gmail.com" | "12345"   | "Should be a valid email address" |
     | "qa.sofi@gmail.com " | "12345"   | "Should be a valid email address" |
     | "qa.sofi@gmail.com"  | " 12345"  | "Whitespaces are not allowed" |
     | "qa.sofi@gmail.com"  | "12345 "  | "Whitespaces are not allowed" |


=======
      | email                | password  | text            |
      | " qa.sofi@gmail.com" | "12345"   | "Should be a valid email address" |
      | "qa.sofi@gmail.com " | "12345"   | "Should be a valid email address" |
      | "qa.sofi@gmail.com"  | " 12345"  | "Whitespaces are not allowed" |
      | "qa.sofi@gmail.com"  | "12345 "  | "Whitespaces are not allowed" |
>>>>>>> master:src/test/resources/Features/login.feature
