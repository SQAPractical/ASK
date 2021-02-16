Feature: Registration - Group Code
  Scenario: Group Code - accepts alphanumeric and special characters
    Given I navigate to the registration page
    When I type the first name "Ana"
    And I type the last name "Ivanova"
    And I type the email "test@test.test"
    And I type the group code "A$2"
    And I type the password "12345"
    And I confirm the password "12345"
    And I click the Register Me button
    Then the Message "You have been Registered." Appears

  Scenario: Group code - field is required
    Given I navigate to the registration page
    Then I type first name "Anna"
    And I type last name "Ivanova"
    And I type email "test123@test.com"
    And I type the password "12345"
    And I confirm password "12345"
    And I click the Register Me button
    Then the Message "This field is required" Appears

  Scenario: Group code - minimum 1 character
    Given I navigate to the registration page
    And I type first name "Nick"
    And I type last name "Grinch"
    And I type email "test456@test.com"
    And I type group code "A"
    And I type password "12345"
    And I confirm password "12345"
    Then I click the Register Me button
    And the Message "You have been Registered." Appears

  Scenario: Group code - maximum 6 characters
    Given I navigate to the registration page
    And I type first name "Alex"
    And I type last name "Harry"
    And I type email "test321@test.com"
    And I type password "12345"
    And I confirm password "12345"
    And I type group code "123456"
    Then I click the Register Me button
    And the Message "You have been Registered." Appears

  Scenario: Group code - max + 1 characters
    Given I navigate to the registration page
    And I type first name "Alex"
    And I type last name "Harry"
    And I type email "test321@test.com"
    And I type password "12345"
    And I confirm password "12345"
    And I type group code "1234567"
    Then I click the Register Me button
    And the Message "Too long. Should be no more than 6 characters" Appears

  Scenario: Group code - whitespaces are not allowed
    Given I navigate to the registration page
    And I type first name "Alex"
    And I type last name "Harry"
    And I type email "test567@test.com"
    And I type password "12345"
    And I confirm password "12345"
    And I type group code "1 2"
    Then I click the Register Me button
    And the Message "Whitespaces are not allowed." Appears



