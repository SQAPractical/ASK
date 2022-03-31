Feature: Registration - Password/Confirm password
  Scenario: Registration - Password/Confirm password - Allowable characters: Alphanumeric and special characters
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12Ab@!" into password
    And I type "12Ab@!" into confirm password
    And I click Register Me button
    Then The message "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Password field is required - cannot be empty
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I click Register Me button
    Then The message "This field is required" appears

  Scenario: Registration - Password/Confirm password - Min (5) characters
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12345" into password
    And I type "12345" into confirm password
    And I click Register Me button
    Then The message "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Min (5-1) characters
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "1234" into password
    And I type "1234" into confirm password
    And I click Register Me button
    Then The message "Too short. Should be at least 5 characters" appears

  Scenario: Registration - Password/Confirm password - Maximum (32) characters
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12345678901234567890123456789022" into password
    And I type "12345678901234567890123456789022" into confirm password
    And I click Register Me button
    Then The message "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Maximum (32+1) characters
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "123456789012345678901234567890221" into password
    And I type "123456789012345678901234567890221" into confirm password
    And I click Register Me button
    Then The message "Too long. Should be no more than 32 characters" appears

  Scenario: Registration - Password/Confirm password - Whitespaces are not allowed - Leading spaces
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type " 12345" into password
    And I type " 12345" into confirm password
    And I click Register Me button
    Then The message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password - Whitespaces are not allowed - Trailing spaces
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12345 " into password
    And I type "12345 " into confirm password
    And I click Register Me button
    Then The message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password - Whitespaces are not allowed - In-between spaces
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12 345 " into password
    And I type "12 345 " into confirm password
    And I click Register Me button
    Then The message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password - Password must match Confirm Password
    When I navigate to the registration page
    And I type "Test" into first name
    And I type "Test" into last name
    And I type "fapibax267@moonran.com" into email
    And I type "111" into group code
    And I type "12345 " into password
    And I type "12343 " into confirm password
    And I click Register Me button
    Then The message "Entered passwords should match" appears