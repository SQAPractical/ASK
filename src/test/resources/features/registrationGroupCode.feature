@FullRegression
Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and sp char
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "qwe@1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario Outline: Registration - Group Code - Field is required
    When I navigate to registration page
    And I type first name <FName>
    And I type last name <LName>
    And I type email <Email>
    And I type group code <Group>
    And I type password <Password>
    And I type confirm password <ConfirmPassword>
    And I click on Register Me button
    Then Message <ExpectedMessage> appears
    Examples:
      | FName  | LName   | Email            | Group | Password | ConfirmPassword | ExpectedMessage          |
      | "John" | "Smith" | "test@gmail.com" | ""    | "12345"  | "12345"         | "This field is required" |

      | FName  | LName   | Email            | Group | Password | ConfirmPassword | ExpectedMessage          |
      | "John" | "Smith" | "test@gmail.com" | ""    | "12345"  | "12345"         | "This field is required" |

  Scenario: Registration - Group Code - Min 1 characters
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered" appears

  Scenario: Registration - Group Code - Max 6 characters
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "qwe@12"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "You have been Registered" appears

  Scenario: Registration - Group Code - Max +1 character
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1234567"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - In Between spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "123 56"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - Leading spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "  3456"
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespaces are not allowed - Trailing spaces
    When I navigate to registration page
    And I type first name "John"
    And I type last name "Smith"
    And I type email "test@gmail.com"
    And I type group code "1234  "
    And I type password "12345"
    And I type confirm password "12345"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears
