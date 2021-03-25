Feature: Log in
  Scenario: Log in : Valid email and valid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign in button
    Then Text "Anna Ivanova" appears

  Scenario: Log in : Invalid email and valid password
    When I navigate to login page
    And I type email "teacherw1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log in : Valid email and invalid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abcs"
    And I click on Sign in button
    Then Text "Authentication failed. User not found or password does not match" appears

    Scenario: Log in :