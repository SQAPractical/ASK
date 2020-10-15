Feature:  aynuras try
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
     | email                | password  | text            |
     | " qa.sofi@gmail.com" | "12345"   | "Should be a valid email address" |
     | "qa.sofi@gmail.com " | "12345"   | "Should be a valid email address" |
     | "qa.sofi@gmail.com"  | " 12345"  | "Whitespaces are not allowed" |
     | "qa.sofi@gmail.com"  | "12345 "  | "Whitespaces are not allowed" |



