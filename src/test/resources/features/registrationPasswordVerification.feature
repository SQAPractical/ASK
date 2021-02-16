Feature: Registration - Password/Confirm Password Verification
  Scenario: Validate whether password field allows alphanumeric and special characters
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I type password "a5!A5"
    And I confirm password "a5!A5"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Password Field is Required
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I click Register Me
    Then Message "This field is required" Appears

  Scenario: Password - Maximum Characters (32)
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I type password "55555555555555555555555555555555"
    And I confirm password "55555555555555555555555555555555"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Password - Minimum -1 (4) Characters Not Allowed
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I type password "5555"
    And I confirm password "5555"
    And I click Register Me
    Then Message "Too short. Should be at least 5 characters" Appears

  Scenario: Password - Whitespaces Not Allowed
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I type password "555    555"
    And I confirm password "555    555"
    And I click Register Me
    Then Message "Whitespaces are not allowed" Appears

  Scenario: Password and Confirm Password Must Match
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Testson"
    And I type email "test@test.com"
    And I type group code "555"
    And I type password "55555"
    And I confirm password "44444"
    And I click Register Me
    Then Message "Entered passwords should match" Appears

  Scenario: Password - Maximum Characters + 1
    Given I navigate to registration page
    When I type first name "Test"
    And I type last name "Test123"
    And I type email "qa@test.com"
    And I type group code "RRRR"
    And I type password "QatestQatestQatestQatestQatestQatestQatestQatestQatestQatest"
    And I confirm password "QatestQatestQatestQatestQatestQatestQatestQatestQatestQatest"
    And I click Register Me
    Then Message "You have been Registered." Appears
