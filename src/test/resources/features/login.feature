@Regression
Feature: Login

  Scenario Outline:  Login
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    Then text <text> appears
    Examples:
      | email                       | pass           | text           |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1" |
      # valid em/valid pass
      | "qa.sofi@gmail.com"         | "12345Abc"     | "TEACHER" |
      #  invalid email
      | "sofi@gmail.com"            | "12345Abc"     | "Authentication failed. User not found or password does not match"  |
      # invalid password
      | "qa.sofi@gmail.com"         | "12345Abc123"  | "Authentication failed. User not found or password does not match" |
      # email key insensitive
      | "Qa.sofi@gmail.com"         | "12345Abc"     | "Sug Teacher1" |
      # password key sensitive
      | "qa.sofi@gmail.com"         | "12345ABC"     | "Authentication failed. User not found or password does not match" |
      # Whitespaces not allowed
      | "   qa.sofi@gmail.com"         | "12345Abc"     | "Whitespaces are not allowed" |
      | "qa.sofi@gmail.com"            | "12345Abc"     | "Whitespaces are not allowed" |


  @Acceptance @test123 @Sofia
  Scenario: password in bullets
      Given I open login page
      And I type password "122345"
      Then password displays in bullets
