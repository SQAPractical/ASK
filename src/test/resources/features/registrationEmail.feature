Feature: Registration - Email

  Scenario: Registration - Email - Alphanumeric characters and @ special char accepted
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "hanna56@mail.ru"
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Email - Input without special char @ is not accepted
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "hanna56mail.ru"
    And I type group code "123"
    Then message "Should be a valid email address" appears

  Scenario: Registration - Email - Field required
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email ""
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "This field is required" appears

  Scenario: Registration - Email - Input with special chars other than @ is not accepted
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "!#$aaan@gmail.com"
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Should be a valid email address" appears

  Scenario: Registration - Email - Leading white spaces are not allowed
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email " hanna56@mail.ru"
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Should be a valid email address" appears

  Scenario: Registration - Email - Tracing white spaces are not allowed
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "hanna56@mail.ru "
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Should be a valid email address" appears

  Scenario: Registration - Email - White spaces between chars are not allowed
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "han na56@mail.ru"
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "Should be a valid email address" appears

  Scenario: Registration - Email - Case insensitive
    When I navigate to registration page
    And I type first name "Hanna"
    And I type last name "White"
    And I type email "Hanna56@mail.ru"
    And I type group code "123"
    And I type password "12345"
    And I type confirmPassword "12345"
    And I click Register Me button
    Then message "You have been Registered." appears
