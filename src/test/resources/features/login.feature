Feature: Login
  Scenario: Log In - student - valid email and valid password combination lets user in
    When I navigate to login page
    And I type into email "student0@gmail.com"
    And I type into password "12345Abc"
    And I click on Sign In button
    Then "Jon Snow" name appears

  Scenario: Log In - student - valid email and invalid password combination
    When I navigate to login page
    And I type into email "student0@gmail.com"
    And I type into password "12345"
    And I click on Sign In button
    Then "Authentication failed." appears

  Scenario: Log In - student - invalid email and valid password combination
    When I navigate to login page
    And I type into email "student0@gmail.com"
    And I type into password "12345"
    And I click on Sign In button
    Then "Authentication failed." appears

  Scenario: Log In - Password displays input in bullets
    When I navigate to login page
    And I confirm that the password "12345" is masked

  Scenario: Log In - email - Leading spaces not allowed
    When I navigate to login page
    And I type into email "  student0@gmail.com"
    And I type into password "12345Abc"
    Then "Should be a valid email address" appears

  Scenario: Log In - Trailing spaces not allowed in email
    When I navigate to login page
    And I type into email "student0@gmail.com  "
    And I type into password "12345Abc"
    Then "Should be a valid email address" appears

  Scenario: Log In - Email field Case insensitive
    When I navigate to login page
    And I type into email "StuDent0@gmail.com"
    And I type into password "12345Abc"
    And I click on Sign In button
    Then "Jon Snow" name appears

  Scenario: Log in - Password field Case sensitive
    When I navigate to login page
    And I type into email "student0@gmail.com"
    And I type into password "12345abc"
    And I click on Sign In button
    Then "Authentication failed." appears

  Scenario: Log In - "Cut" menu item on "Password" field is disabled
    When I navigate to login page
    And I check cut function for password
