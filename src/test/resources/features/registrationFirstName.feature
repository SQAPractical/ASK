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


    Scenario: Registration - First Name - Field required
        When I navigate to registration page
        And I type Last Name "Ivanov"
        And I type Email "test@test.com"
        And I type Group Code "QWE"
        And I type Password "12345"
        And I type confirm Password "12345"
        And I click on Register Me button
        Then TextOne "This field is required" appears

    Scenario: Registration - First Name - Max char
        When I navigate to registration page
        And I type First Name2 "Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!"
        And I type Last Name "I"
        And I type Email "test@test.com"
        And I type Group Code "QWE"
        And I type Password "12345"
        And I type confirm Password "12345"
        And I click on Register Me button
        Then TextThree "Should contain only latin characters" appears

  Scenario: Registration - First Name - Max+1 char
    When I navigate to registration page
    And I type First Name4 "Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!@$Ivan123!o"
    And I type Last Name "I"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then TextThree "Should contain only latin characters" appears


  Scenario: Registration - First Name - Min char
    When I navigate to registration page
    And I type First Name5 "I"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First Name - Whitespaces are not allowed
    When I navigate to registration page
    And I type First Name6 "Iva n123!@$"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then TextThree "Should contain only latin characters" appears

  Scenario: Registration - First Name - Digits
    When I navigate to registration page
    And I type First Name7 "5555"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then TextThree "Should contain only latin characters" appears

  Scenario: Registration - First Name - Spacial Characters
    When I navigate to registration page
    And I type First Name8 "!@#"
    And I type Last Name "Ivanov"
    And I type Email "test@test.com"
    And I type Group Code "QWE"
    And I type Password "12345"
    And I type confirm Password "12345"
    And I click on Register Me button
    Then TextThree "Should contain only latin characters" appears
Feature: Registration - First name
  Scenario: Registration - First name - Latin char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Field required
    When I navigate to registration page
    And I type First Name ""
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "This field is required" appears

  Scenario: Registration - First name - Max 98 characters
    When I navigate to registration page
    And I type First Name "maxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxchar"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Max characters 98+1
    When I navigate to registration page
    And I type First Name "maxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharactersmaxcharm"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." should not appears

  Scenario: Registration - First name - Min 1 character
    When I navigate to registration page
    And I type First Name "B"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Whitespaces are not allowed
    When I navigate to registration page
    And I type First Name "B arbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First name - Allowable characters: Alphanumeric
    When I navigate to registration page
    And I type First Name "B12345"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First name - Allowable characters: special characters
    When I navigate to registration page
    And I type First Name "B@&%"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should contain only latin characters" appears
