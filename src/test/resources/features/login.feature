Feature: Log in
  Scenario: Login valid email, valid password
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign In button
    Then Text "Sofia Teacher" appears

  Scenario: Login valid email, invalid password
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345gg" on login page
    And I click Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario Outline: Leading and trailing spaces in  email and password
    Given I open <pageName> page
    When I type email <email> on login page
    And I type password <password> on login page
    And I click Sign In button
    Then Text <text> appears
    Examples:
      | pageName | email               | password | text                              |
      | "Login"  | " qa.sofi@gmail.com" | "12345"  | "Should be a valid email address" |
      | "Login"  | "qa.sofi@gmail.com  " | "12345"  | "Should be a valid email address" |
      | "Login"  | "qa.sofi@gmail.com" | " 12345"  | "White space not allowed" |
