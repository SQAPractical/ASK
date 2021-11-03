Feature: Registration- Group Code

  Scenario: Registration- Group Code - Alphanumeric and sp char
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "12AB@"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration- Group Code - Field is required
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code ""
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "This field is required" appears

  Scenario: Registration- Group Code - Max Characters
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "12AB@Q"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration- Group Code - Max + 1
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "qwertyu"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration- Group Code - Min Character
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "1"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration- Group Code - Leading white spaces
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "  123"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration- Group Code - White spaces in the middle are not allowed
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "1  23"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration- Group Code - Trailing White spaces are not allowed
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "Test"
    And I type my email "smohamedalaa22223@caraparcal.com"
    And I type group code "123  "
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" appears

