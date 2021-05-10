Feature: Registration - First Name
  Scenario: Registration - First Name - Latin char
    When I navigate to registration page
    And I type First Name "Ivan"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - special characters not allowed
    When I navigate to registration page
    And I type First Name "B@&%"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

    Scenario: Registration - First Name - Field required
        When I navigate to registration page
        And I type Last Name "Ivanov"
        And I type Email "test@test.com"
        And I type Group Code "QWE"
        And I type Password "12345"
        And I type confirm Password "12345"
        And I click on Register Me button
        Then Text "This field is required" appears

    Scenario: Registration - First Name - Max char
        When I navigate to registration page
        And I type First Name "wergwrewergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwrr"
        And I type Last Name "I"
        And I type Email "test@test.com"
        And I type Group Code "QWE"
        And I type Password "12345"
        And I type confirm Password "12345"
        And I click on Register Me button
        Then Text "You have been Registered." appears

  Scenario: Registration - First Name - Max+1 char
    When I navigate to registration page
    And I type First Name "wergwrerwergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwwergwrewergwerfwrr"
    And I type Last Name "I"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "Should be no more than 98 char" appears


  Scenario: Registration - First Name - Min char
    When I navigate to registration page
    And I type First Name "I"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First Name - Whitespaces are not allowed
    When I navigate to registration page
    And I type First Name "Iva n123!@$"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First Name - Digits
    When I navigate to registration page
    And I type First Name "5555"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First Name - Spacial Characters
    When I navigate to registration page
    And I type First Name "!@#"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First name - Latin char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Field required
    When I navigate to registration page
    And I type First Name ""
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "This field is required" appears

  Scenario: Registration - First name - Max 98 characters
    When I navigate to registration page
    And I type First Name "maxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxchar"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Min 1 character
    When I navigate to registration page
    And I type First Name "B"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Whitespaces are not allowed
    When I navigate to registration page
    And I type First Name "B arbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First name - Allowable characters: Alphanumeric
    When I navigate to registration page
    And I type First Name "B12345"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears


