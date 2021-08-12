Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanum and Special Char
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "qwe@1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "You have been Registered." appears


  Scenario: Registration - Group Code - Field is Required
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "" appears


  Scenario: Registration - Group Code - Minumum 1 Char
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6 Chars
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "qwe@12"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Max +1 Chars
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "1234567"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - In Between Spaces are not allowed
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "123 456"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Leading Spaces are not allowed
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code " 2456"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Trailing Spaces are not allowed
    When I navigate to registration page
    Then I fill out First name "Jonn"
    And I fill out Last name "Smith"
    And I fill out email "test@gmail.com"
    And I type group code "2456 "
    And I type password "12345"
    And I type confirm password "12345"
    And I click on "Register Me" button
    Then Message "Whitespaces are not allowed" appears
