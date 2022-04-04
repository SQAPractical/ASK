@Registration
Feature: Registration - First Name

  Scenario: Registration - First Name - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "ABc1234$%^"
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - First Name - Field is required
    When I navigate to registration page
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - First Name - Max 98 characters
    When I navigate to registration page
    And I type first name "ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$"
    And I type last name "T"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - First Name - Max+1 characters
    When I navigate to registration page
    And I type first name "ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$%^ABc1234$T"
    And I type last name "T"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 98 characters" appears

  Scenario: Registration - First Name - Min 1 character
    When I navigate to registration page
    And I type first name "A"
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - First Name - Leading spaces
    When I navigate to registration page
    And I type first name " Test"
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - First Name - Trailing spaces
    When I navigate to registration page
    And I type first name "Test "
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - First Name - Spaces between 2 words
    When I navigate to registration page
    And I type first name "Te st "
    And I type last name "Test"
    And I type email "test@gmail.com"
    And I type group code "FFF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears