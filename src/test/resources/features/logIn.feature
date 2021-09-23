Feature: Log In
  Scenario: Log In - With valid email/valid password
    When I Navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click Sign In button.
    Then Main menu appears

    Scenario: Log In - With invalid email/valid password
      When I Navigate to login page
      And I type Email "t1eacher1@gmail.com"
      And I type Password "12345Abc"
      And I click Sign In button.
      Then Message "Authentication failed" appears

    Scenario: Log In - With empty email/valid password
      When I Navigate to login page
      And I click on Email field
      And I click on Password field
      Then Message "This field is required" appears

  Scenario: Log In - With valid email/empty password
    When I Navigate to login page
    And I click on Password field
    And I click on Email field
    Then Message "This field is required" appears

