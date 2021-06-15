Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and sp char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "RRR@#"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "You have been Registered" appears

  Scenario: Registration - Group Code field is required
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "This field is required" appears

  Scenario: Registration - Group Code - Min Char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "1"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "You have been Registered" appears

  Scenario: Registration - Group Code - Max Char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "123456"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "You have been Registered" appears

  Scenario: Registration - Group Code - Max Char+1
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "1234567"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Leading space
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code " 123ab"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespace between char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "12 3ab"
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Trailing space
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.com"
    And I type group code "123ab "
    And I type password "12345"
    And I confirm password "12345"
    And I click on register me button
    Then Text "Whitespaces are not allowed" appears

