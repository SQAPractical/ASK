Feature: Registration - Group Code
  Scenario: Registration - Group Code - Allow Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code "A2A#$"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "You have been Registered" appears


  Scenario: Registration - Group Code - field is required
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code ""
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "This field is required" appears

  Scenario: Registration - Group Code - min 1 chatacter
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code "A"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "You have been Registered" appears


  Scenario: Registration - Group Code - max 6 chatacter
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code "ABC123"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "You have been Registered" appears

  Scenario: Registration - Group Code - max 6+1 chatacter
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code "ABC1234"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code "ABC 12"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - No leading white spaces
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code " ABC12"
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Whitespaces are not allowed" appears


  Scenario: Registration - Group Code - No trailing white spaces
    When I navigate to registration page
    And I type first name "Michael"
    And I type last name "Lan"
    And I type email "test@gmail.com"
    And I type group code " ABC1 "
    And I type password "12345"
    And I confirm password "12345"
    And I click on Register me button
    Then Text "Whitespaces are not allowed" appears