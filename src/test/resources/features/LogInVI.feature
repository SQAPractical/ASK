@FullRegression
Feature: log In
  Scenario: Log In - Verify if a user will be able to login with a valid username and valid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button

  Scenario: Log In - Verify if a user cannot login with a invalid username and an valid password
    When I navigate to login page
    And I type email "viteacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button

  Scenario: Log In - Verify if a user cannot login with a valid username and an invalid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345AbcVI"
    And I click Sign In button

  Scenario: Log In - Verify the "Forgot Password" functionality
    When I navigate to login page
    And I click on I forgot my password link

  Scenario: Log In - PWD field Case sensitive
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345ABC"
    And I click Sign In button

  Scenario: Log In - Email field Case insensitive
    When I navigate to login page
    And I type email "Teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button

  Scenario: Log In - Leading spaces not allowed for email
    When I navigate to login page
    And I type email "   teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button

  Scenario: Log In - Trailing spaces not allowed for email
    When I navigate to login page
    And I type email "teacher1@gmail.com  "
    And I type password "12345Abc"
    And I click Sign In button

  Scenario: Log In - Leading spaces not allowed for password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "  12345Abc"
    And I click Sign In button

  Scenario: Log In - Trailing spaces not allowed for password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc "
    And I click Sign In button

