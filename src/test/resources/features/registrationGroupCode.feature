Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and special char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "An12!$"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Group Code - Field required
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "This field is required" appears

  Scenario: Registration - Group Code - Min characters
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "1"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6 char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "123456"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6+1 char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "1234567"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - White spaces not allowed
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "12 456"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Whitespaces are not allowed" appears