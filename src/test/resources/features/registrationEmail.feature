@FullRegression
Feature: Registration - Email
  Scenario: Registration - Email - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Jonh"
    And I type last name "Smith"
    And I type email "dp60787@outlook.sbs"
    And I type group code "ABC"
    And I type password "12345Abc"
    And I confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Email - Field is required
    When I navigate to registration page
    And I type first name "Jonh"
    And I type last name "Smith"
    And I type email ""
    And I type group code "ABC"
    And I type password "12345Abc"
    And I confirm password "12345Abc"
    And I click on Register Me button
    Then Message "This field is required" appears

   Scenario: Registration - Email - Whitespaces are not allowed at the beginning of the email
    When I navigate to registration page
    And I type first name "Jonh"
    And I type last name "Smith"
    And I type email " dp60787@outlook.sbs"
    And I type group code "ABC"
    And I type password "12345Abc"
    And I confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Registration - Email - Whitespaces are not allowed in the middle of the email
   When I navigate to registration page
   And I type first name "Jonh"
   And I type last name "Smith"
   And I type email "dp607 87@outlook.sbs"
   And I type group code "ABC"
   And I type password "12345Abc"
   And I confirm password "12345Abc"
   And I click on Register Me button
   Then Message "Should be a valid email address" appears

 Scenario: Registration - Email - Whitespaces are not allowed at the end of the email
   When I navigate to registration page
   And I type first name "Jonh"
   And I type last name "Smith"
   And I type email "dp60787@outlook.sbs "
   And I type group code "ABC"
   And I type password "12345Abc"
   And I confirm password "12345Abc"
   And I click on Register Me button
   Then Message "Should be a valid email address" appears

 Scenario: Registration - Email - Can't register without @ special character
   When I navigate to registration page
   And I type first name "Jonh"
   And I type last name "Smith"
   And I type email "dp60787outlook.sbs"
   And I type group code "ABC"
   And I type password "12345Abc"
   And I confirm password "12345Abc"
   And I click on Register Me button
   Then Message "Should be a valid email address" appears

 Scenario: Registration - Email - Dot "." in the email address is required
   When I navigate to registration page
   And I type first name "Jonh"
   And I type last name "Smith"
   And I type email "dp60787@outlooksbs"
   And I type group code "ABC"
   And I type password "12345Abc"
   And I confirm password "12345Abc"
   And I click on Register Me button
   Then Message "Should be a valid email address" appears