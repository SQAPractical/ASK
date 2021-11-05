Feature: "Log In"
  Scenario: Log In -login with valid Email and password
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "Log Out" appears

  Scenario: Log In -login with valid Email and invalid password
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Ab"
    And I click Sign In button
    Then Message "Authentication failed. User not found or password does not match" appears

  Scenario: Log In -login with invalid Email and valid password
    When I navigate to login page
    And I type my email "techer3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "Authentication failed. User not found or password does not match" appears

  Scenario: Log In - Email field required, can't be empty
    When I navigate to login page
    And I type my email ""
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "This field is required" appears

  Scenario: Log In - Password field required, can't be empty
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password ""
    And I click Sign In button
    Then Message "This field is required" appears

  Scenario: Log In - Trailing space not allowed on email field
    When I navigate to login page
    And I type my email "teacher3@gmail.com "
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "Should be a valid email address" appears

  Scenario: Log In - Trailing space not allowed on password field
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc "
    And I click Sign In button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Log In - Leading space not allowed on email field
    When I navigate to login page
    And I type my email " teacher3@gmail.com "
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "Should be a valid email address" appears

  Scenario: Log In - Leading space not allowed on password field
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password " 12345Abc"
    And I click Sign In button
    Then Message "Whitespaces are not allowed" appears


  Scenario: Log In -PWD field Case sensitive
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345ABc"
    And I click Sign In button
    Then Message "Authentication failed. User not found or password does not match" appears

  Scenario: Log In -Email field Case insensitive
    When I navigate to login page
    And I type my email "tEacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then Message "Log Out" appears

  Scenario: Log In - password displays in bullets, copy/cut disabled
    When I navigate to login page
    And I type password "12345Abc"
    Then password displays in bullets, copy and cut disabled


