@fullRegression
@partialRegression
Feature: Registration - First Name
  @Smoke
  Scenario: Registration - First Name - latin characters
    Given I navigate to registration page
    When I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Registration - First Name - Field is required
    Given I navigate to registration page
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "This field is required" Appears

  Scenario: Registration - First Name - min char
    Given I navigate to registration page
    When I type first name "I"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Registration - First Name - Max char
    Given I navigate to registration page
    When I type first name "qwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagw"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Registration - First Name - Max+1 char
    Given I navigate to registration page
    When I type first name "qwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwrafrfqwegqweagwf"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "Too Long. Should be no more than 100 characters" Appears

  Scenario: Registration - First Name - whitespaces
    Given I navigate to registration page
    When I type first name "Ivan M"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "Whitespaces are not allowed" Appears

  Scenario: Registration - First Name - special characters
    Given I navigate to registration page
    When I type first name "#$%^&"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "Only latin characters allowed" Appears

  Scenario: Registration - First Name - numbers
    Given I navigate to registration page
    When I type first name "11311"
    And I type last name "Ivanov"
    And I type email "test@test.test"
    And I type group code "SSS"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "Only latin characters allowed" Appears