@Regression
Feature: Log in
  Scenario: Log in : Valid email and valid password
    When  I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Text "Anna Ivanova" appears

  Scenario: Log in : Invalid email and valid password
    When I navigate to login page
    And I type email "teacherw1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log in : Valid email and invalid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abcs"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log in : Password displays in bullets and copy/cut disabled
    When I navigate to login page
    And I type password "12345wdedcAbc"
    Then Password displays in bullets and copy cut disabled

  Scenario: Log in : Email - Leading spaces not allowed
    When I navigate to login page
    And I type email " teacher1@gmail.com"
    And I click on Sign In button
    Then Text "Should be a valid email" appears

  Scenario: Log in : Email - Trailing spaces not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com "
    And I click on Sign In button
    Then Text "Should be a valid email" appears

  Scenario: Log in : Password - Leading spaces not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password " 12345wdedcAbc"
    And I click on Sign In button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Log in : Password - Trailing spaces not allowed
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345wdedcAbc "
    And I click on Sign In button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Log in : Email field Case insensitive
    When I navigate to login page
    And I type email "TEACHER1@GMAIL.COM"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Text "Should be a valid email" appears

