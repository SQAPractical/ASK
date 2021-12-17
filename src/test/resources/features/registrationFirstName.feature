@FullRegression
Feature: Registration - First Name
  @Smoke
  Scenario: Registration - First Name - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Ann123@#$%"
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Field is required
    When I navigate to registration page
    And I type first name ""
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - First Name - Max 98 characters
    When I navigate to registration page
    And I type first name "Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#"
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - First Name - Max+1 (99) characters
    When I navigate to registration page
    And I type first name "Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#$%Ann123@#q"
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 98 characters" appears

  Scenario: Registration - First Name - Leading white spaces are not allowed
    When I navigate to registration page
    And I type first name " Ann123@#$%"
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "White spaces are not allowed" appears

  Scenario: Registration - First Name - Trailing white spaces are not allowed
    When I navigate to registration page
    And I type first name "Ann123@#$% "
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "White spaces are not allowed" appears

  Scenario: Registration - First Name - White spaces are not allowed in the middle
    When I navigate to registration page
    And I type first name "Ann123 @#$%"
    And I type last name "Test"
    And I type email "netepvcp@umfragenliste.de"
    And I type group code "AAA"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "White spaces are not allowed" appears






