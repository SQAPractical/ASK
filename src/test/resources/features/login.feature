Feature: Log in
  Scenario: Log in : Valid email and valid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Text "Anna Ivanova" appears

  Scenario: Log in : Invalid email and valid password
    When I navigate to login page
    And I type email "teacheroo@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log in : Valid email and invalid password
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abccccc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

  Scenario: Log in : Invalid email and invalid password
    When I navigate to login page
    And I type email "teacher1ccc@gmail.com"
    And I type password "12345Abccccc"
    And I click on Sign In button
    Then Text "Authentication failed. User not found or password does not match" appears

    Scenario: Log in: verify Password displays in bullets/ Cut/Copy menu item on "Password" field is disabled
      When I navigate to login page
      And I type password "12345Abccccc"
      Then password displays in bullets and Cut\\/Copy are disabled