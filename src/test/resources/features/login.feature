Feature: Login
  Scenario: Login - valid Email and valid Password
    When I navigate to login Page
    And I type Email "student1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign-in button
    Then user is navigated to the home page

  Scenario: Login - invalid Email and valid Password
    When I navigate to login Page
    And I type Email "student1000@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign-in button
    Then message "Authentication failed. User not found or password does not match" appears

  Scenario: Login - valid Email and invalid Password
    When I navigate to login Page
    And I type Email "student1@gmail.com"
    And I type Password "12345"
    And I click on Sign-in button
    Then message "Authentication failed. User not found or password does not match" appears

  Scenario: Login -  Leading spaces in email field are not allowed
    When I navigate to login Page
    And I type Email " student1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign-in button
    Then message "Should be a valid email address" appears

  Scenario: Login -  Leading spaces in password field are not allowed
    When I navigate to login Page
    And I type Email "student1@gmail.com"
    And I type Password " 12345Abc"
    And I click on Sign-in button
    Then message "Whitespaces are not allowed" appears

  Scenario: Login -  Tracing spaces in email field are not allowed
    When I navigate to login Page
    And I type Email "student1@gmail.com  "
    And I type Password "12345Abc"
    And I click on Sign-in button
    Then message "Should be a valid email address" appears

  Scenario: Login -  Tracing spaces in password field are not allowed
    When I navigate to login Page
    And I type Email "student1@gmail.com"
    And I type Password "12345Abc "
    And I click on Sign-in button
    Then message "Whitespaces are not allowed" appears

  Scenario: Login - Email field is case insensitive
    When I navigate to login Page
    And I type Email "STUDENT1@GMAIL.COM"
    And I type Password "12345Abc"
    And I click on Sign-in button
    Then user is navigated to the home page

  Scenario: Login - Password field is case sensitive
    When I navigate to login Page
    And I type Email "student1@gmail.com"
    And I type Password "12345ABC"
    And I click on Sign-in button
    Then message "Authentication failed. User not found or password does not match" appears

