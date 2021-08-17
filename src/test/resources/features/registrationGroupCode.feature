@FullRegression
Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and sp char
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "qwe@1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Field is required
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code ""
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Group Code - Min 1 characters
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered" appears

  Scenario: Registration - Group Code - Max 6 characters
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "qwe@12"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered" appears

  Scenario: Registration - Group Code - Max +1 character
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1234567"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - In Between spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "123 56"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - Leading spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "  3456"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - Trailing spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1234  "
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears
