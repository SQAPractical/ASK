Feature: Login
  Scenario: Log In with valid credentials
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Log Out" is displayed on home page

  Scenario: Login - password displays in bullets, copy, cut - disabled
    When I navigate to login page
    And I type password "12345Abc"
    Then Password displays in bullets, copy, cut - disabled