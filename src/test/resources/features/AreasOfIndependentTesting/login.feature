Feature: Login
  Scenario: Login - Valid Email/Password
    Given I navigate to "login" page
    And I type email "xjnrdnpathake@b4top.tk" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    Then I verify user name "Leslie Teacher" is displayed