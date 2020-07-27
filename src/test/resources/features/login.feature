Feature: Login

  Scenario Outline: Valid email, valid password
    Given I open <page> page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    Then Text <text> appears
    Examples:
      | page    | email                   | pass     | text            |
      | "login" | "qa.sofi@gmail.com"     | "123456" | "Sofia Teacher" |
      | "login" | "qa.soefdfi@gmail.com"  | "123456" | "Authentication failed. User not found or password does not match" |
      | "login" | "gal.gmail.com"         | "123456" | "Should be a valid email address" |
      | "login" | ""                      | "123456" | "This field is required" |
      | "login" | "qa.sofi@gmail.com"     | ""       | "This field is required" |
      | "login" | " gal@gmail.com"        | "123456" | "Should be a valid email address" |
      | "login" | "gal@gmail.com "        | "123456" | "Should be a valid email address" |
      | "login" | "gal@gmail.com "        | " 123456" | "Whitespaces are not allowed" |
      | "login" | "gal@gmail.com"         | "123456 " | "Whitespaces are not allowed" |

  Scenario: password displays in bullets, copy, cut options disabled
    Given I open "login" page
    And I type password "12345"
    Then password displays in bullets, copy, cut options disabled

