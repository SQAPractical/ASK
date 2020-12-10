Feature: registration - Password/Confirm Password
  Scenario: AC29-224 - Happy path for Password/Confirm Password
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password "12345"
    And I type to confirm password "12345"

  Scenario: AC29-226 - Positive -- Allowable characters: Alphanumeric and special characters
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password "12345"
    And I type to confirm password "12345"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: AC29-227 - Password field is required - cannot be empty
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password ""
    And I type to confirm password ""
    Then text "This field is required" appears

  Scenario: AC29-228 - Negative -- Minimum (5) characters -- Less than 5
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password "1234"
    And I type to confirm password "1234"
    Then text "Too short. Should be at least 5 characters" appears

  Scenario: AC29-229 - Negative -- More than (32) characters -- More than 32
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password "123451234512345123451234512345123451234512345123451234512345"
    And I type to confirm password "123451234512345123451234512345123451234512345123451234512345"
    Then text "Too long. Should be no more than 32 characters" appears

  Scenario: AC29-293 - Negative -- Whitespaces are not allowed
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password "123 456"
    And I type to confirm password "123 456"
    Then text "Whitespaces are not allowed" appears

  Scenario: AC29-294 - Negative -- Whitespaces are not allowed -- Trimming
    When I open "registration" page
    And I type first name "abc"
    And I type last name "def"
    And I type email "abc@def.com"
    And I type group code "123"
    And I type password " 12345"
    And I type to confirm password " 12345"
    Then text "Whitespaces are not allowed" appears
