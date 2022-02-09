Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and special char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "QW12$"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Group Code - Field required
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code ""
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "This field is required" appears

  Scenario: Registration - Group Code - Min 1 character
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "Q"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6 characters
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "QW12$G"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6 characters plus 1
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "QW12$GT"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Leading spaces are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code " QW12$"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Spaces between 2 words are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "QW 12$"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Trailing spaces are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "fatihonder91@naverapp.com"
    And I type group code "QW12$ "
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears



