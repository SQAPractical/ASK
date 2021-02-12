Feature: Login

  Scenario: valid email and valid password
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded

  Scenario: invalid email and valid password
    Given I navigate to login page
    When I type email "student@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then Message "Authentication failed. User not found or password does not match" Appears

  Scenario: valid email and invalid password
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345678" on login page
    And I click on sing in button
    Then Message "Authentication failed. User not found or password does not match" Appears

  Scenario: Password field displays input in bullets
    Given I navigate to login page
    When I type password "12345Abc" on login page
    Then password field display input in bullets

  Scenario: Cut option disabled
    Given I navigate to login page
    When I type password "12345Abc" on login page
    Then password is not cut

  Scenario: Copy option disabled
    Given I navigate to login page
    When I type password "12345Abc" on login page
    Then password is not copy

  Scenario: Leading not allowed
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password " 12345Abc" on login page
    And I click on sing in button
    Then "Whitespaces are not allowed" message appears on login page

  Scenario: Trailing spaces not allowed
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345Abc " on login page
    And I click on sing in button
    Then "Whitespaces are not allowed" message appears on login page

  Scenario: email field case insensitive
    Given I navigate to login page
    When I type email "Student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded

  Scenario: valid password field case sensitive
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345abc" on login page
    And I click on sing in button
    Then Message "Authentication failed. User not found or password does not match" Appears

  Scenario: check "I forgot my password" link
    Given I navigate to login page
    When I click on "I forgot my password" link on login page
    Then "forgot-password" page loaded

  Scenario: check "Register Now" link
    Given I navigate to login page
    When I click on "Register Now" link on login page
    Then "registration" page loaded