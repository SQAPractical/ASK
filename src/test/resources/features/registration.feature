Feature: Registration

  Scenario Outline: Registration-Password/Confirm Password - Alphanumeric & Special characters are accepted
    Given I open <pageName> page
    When I click Register now button
    And I type name <firstName> on registration page
    And I type last name <lastName> on registration page
    And I type email <email> on registration page
    And I type group code <groupCode> on registration page
    And I type password <password> on registration page
    And I type confirm password <confirmPassword> on registration page
    And I click Register me button
    Then Text <text> appears
    Examples:
      | pageName | firstName   | lastName   | email   | groupCode | password      | confirmPassword     | text   |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "abc123@#$%&" | "abc123@#$%&"       | "You have been Registered" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | ""            | ""                   | "This field is required" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "Ab@12"       | ""                   | "This field is required" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "Ab@12"       | "Ab@12"              | "You have been Registered" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "A"           | "A"                                                   | "Too short. Should be at least 5 characters" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "12345678901234567890123456789012"| "12345678901234567890123456789012"| "You have been Registered" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "123456789012345678901234567890123"| "123456789012345678901234567890123"| "Too long. Should be no more than 32 characters" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "123 45"        | "123 45"           | "Whitespaces are not allowed" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "12345 "        | "12345 "           | "Whitespaces are not allowed" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | " 12345"        | " 12345"           | "Whitespaces are not allowed" |
      | "login"  | "Vera" | "Hope" | "vera@hope.love" | "T100"    | "Abc123"        | "123Abc"           | "Entered passwords should match" |

  Scenario: Login - Password displays in bullets, Copy, Cut disable
    Given I open "registration" page
    Then Password displays in bullets, Copy, Cut disable