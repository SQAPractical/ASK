Feature: Login
  Scenario: Log In with valid credentials
    When I navigate to login page
    And I type email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Go To Assignments" is displayed on home page

  Scenario: Log In - password displays in bullets, copy, cut - disabled
    When I navigate to login page
    And I type password "12345Abc"
    Then password displays in bullets, copy, cut - disabled