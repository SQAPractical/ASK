@fullRegression
Feature: Login
  Scenario: Log In with valid credentials
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Assessment Control" is displayed on home page


  Scenario: Log in with valid email/invalid password should be rejected
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Bbc"
    And I click on Sign In button
    Then Snackbar with text "Authentication failed" is displayed

  Scenario: Log in with invalid email/valid password should be rejected
    When I navigate to login page
    And I type email "Qeacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Snackbar with text "Authentication failed" is displayed

  Scenario: Login - password displays in bullets, copy, cut - disabled
    When I navigate to login page
    And I type password "12345Abc"
    Then password displays in bullets, copy, cut - disabled

  Scenario: Login - Leading space not allowed on email field
    When I navigate to login page
    And I type email " teacher3@gmail.com"
    And I click on next field
    Then red error message "Should be a valid email address" appears underneath

  Scenario: Login - Trailing space not allowed on email field
    When I navigate to login page
    And I type email "teacher3@gmail.com "
    And I click on next field
    Then red error message "Should be a valid email address" appears underneath

  Scenario: Login - Leading space not allowed on password field
    When I navigate to login page
    And I type password " 12345Abc"
    And I click on previous field
    Then red error message "Whitespaces are not allowed" appears underneath

  Scenario: Login - Trailing space not allowed on password field
    When I navigate to login page
    And I type password "12345Abc "
    And I click on previous field
    Then red error message "Whitespaces are not allowed" appears underneath

  Scenario: Login - Email field NOT case sensitive
    When I navigate to login page
    And I type email "Teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Assessment Control" is displayed on home page

  Scenario: Login - Password field IS case sensitive
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345aBC"
    And I click on Sign In button
    Then Snackbar with text "Authentication failed" is displayed
