Feature: Registration - Email
  Scenario: Registration - Email - Alphanumeric and special characters
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara00000@gmail.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Alphanumeric and special characters together
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara+1@gmail.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - The general format
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "barbara@gmail.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Field required
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email ""
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "This field is required" appears

  Scenario: Registration - Email - Local part with 64, 63, 63 characters
  # Scenario covers TC A5-237, A5-239, A5-243, A5-245
  # Change first char in the email every time before running (unable to create more then one account with this email format)
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "ptudent1student1student1student1student1student1student1student1@gmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgma.comcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcom"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Local part with 63+1 characters followed by (.)
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "student1@gmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmai.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Local part with Max 64+1 char on the left of an @
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "student1student1student1student1student1student1student1student11@gmail.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Local part With 63+1 characters in last part of domain
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "student1@gmail.comcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomm"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Local part with 64+1 char@ 63+1 char(.) 63+1 char
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "sstudent1student1student1student1student1student1student1student1@ggmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgmailgma.comcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomcomm"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Whitespaces are not allowed
    When I navigate to registration page
    And I type First Name "Barbara"
    And I type Last Name "Smith"
    And I type Email "student 1@gmail.com"
    And I type Group Code "ABC"
    And I type Password "12345Abc"
    And I type confirm Password "12345Abc"
    And I click on Register Me button
    Then Text "Should be a valid email address" appears




