@FullRegression
Feature: LogIn
  @Smoke
  Scenario: LogIn - Valid email and valid password
    When I navigate to login page
    And I Type Email "student1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then message "Log Out" appears

  Scenario: LogIn - Invalid email and valid password
    When I navigate to login page
    And I Type Email "student1000@gmail.com"
    And I type Password "12345"
    And I click on Sign In button
    Then message "Authentication failed. User not found or password does not match" appears

  Scenario:  LogIn -Leading spaces in password field are not allowed
   When I navigate to login page
    And I Type Email "student1@gmail.com"
    And I type Password " 12345Abc"
    And I click Sign In button
    Then message "Whitespaces are not allowed" appears

  Scenario: LogIn - Tracing spaces in email field are not allow When I navigate to login page
    When I navigate to login page
    And I Type Email "student1@gmail.com "
    And I type Password "12345Abc"
    And I click Sign In button
    Then message "Should be a valid email address" appears

 Scenario: LogIn - Tracing spaces in password field are not allowed
    When I navigate to login page
    And I Type Email "student1@gmail.com"
    And I type Password "1234Abc "
   And I click Sign In button
    Then message "Whitespaces are not allowed" appears

  Scenario:  LogIn -  Email field is case insensitive
    When I navigate to login page
    And I Type Email "STUDENT1@GMAIL.COM"
    And I type Password "12345Abc"
    And I click on Sign In button
    Then message "Log Out" appears

  Scenario:  LogIn - Password field is case sensitive
    When I navigate to login page
    And I Type Email "STUDENT1@GMAIL.COM"
    And I type Password "12345ABC"
    And I click on Sign In button
    Then message "Authentication failed. User not found or password does not match" appears

  Scenario:  Password in bullets. Copy and Cut disable
    When I navigate to login page
    And I type Password "12345ABC"
    Then Password in bullets. Copy and Cut disable



