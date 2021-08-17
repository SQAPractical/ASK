@FullRegression
Feature: Registration - Email
  Scenario: Registration - Email - Alphanumeric and @ sp char
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test77@gmail.com"
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Email - Field is required
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Email  - Whitespaces are not allowed - In Between spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test @gmail.com"
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Registration - Email  - Whitespaces are not allowed - Leading spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email " test@gmail.com"
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Registration - Email  - Whitespaces are not allowed - Trailing spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com "
    And I type group code "abc"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Should be a valid email address" appears


