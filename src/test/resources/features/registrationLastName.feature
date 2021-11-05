Feature: Registration - Last Name
  Scenario: Registration - Last Name - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Sam123$"
    And I type my email "iyunuskalam16@rtfsl.site"
    And I type group code "001"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Field is required
    When I navigate to registration page
    And I click on Last Name field
    And I type group code "0"
    Then Message "This field is required" appears

  Scenario: Registration - Last Name - Min 1 character
      When I navigate to registration page
      And I type first name "Test"
      And I type last name "S"
      And I type my email "iyunuskalam16@rtfsl.site"
      And I type group code "001"
      And I type password "12345"
      And I confirm password "12345"
      And I click Register Me button
      Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Max 98 character (When the First Name 1 char)
    When I navigate to registration page
    And I type first name "T"
    And I type last name "Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123vSam123Sam123Sam123Sam1#98"
    And I type my email "iyunuskalam16@rtfsl.site"
    And I type group code "001"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Max+1
    When I navigate to registration page
    And I type first name "T"
    And I type last name "Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123Sam123vSam123Sam123Sam123Sam1##99"
    And I type my email "iyunuskalam16@rtfsl.site"
    And I type group code "001"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "Too long. Should be no more than 98 characters" appears

  Scenario: Registration - Last Name - Whitespaces in the middle are not allowed
      When I navigate to registration page
      And I type last name "S 123"
      And I type group code " "
      Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Last Name -  Leading Whitespace are not allowed
    When I navigate to registration page
    And I type last name " Sa$123"
    And I type group code " "
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Last Name -  Trailing Whitespace are not allowed
    When I navigate to registration page
    And I type last name "Sa$123   "
    And I type group code " "
    Then Message "Whitespaces are not allowed" appears

