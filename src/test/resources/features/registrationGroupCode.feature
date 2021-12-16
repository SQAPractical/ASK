Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "012@B"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Field is required
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code ""
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Group Code - Minimum Characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "1"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Group Code - Maximum Characters plus one
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "1234567"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed in beginning
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code " 1234"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed in the middle
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "12 34"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed at the end
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Student"
    And I type email "adfryzlm@isluntvia.com"
    And I type group code "1234 "
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears








