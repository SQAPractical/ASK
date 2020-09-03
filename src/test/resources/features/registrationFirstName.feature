Feature: registration first name
  Scenario: registration first name - alpha numeric characters
    Given I open "registration" page
    When I type first name "Jonny1"
    And I type last name "Great"
    And I type email "test@gmail.com" on registration page
    And I type group code "AAA"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click register me button
    Then Text "You have been Registered." appears

  Scenario Outline: registration first name field is required
    Given I open <pageName> page
    When I type first name <FirstName>
    And I type last name <LastName>
    And I type email <Email> on registration page
    And I type group code <Groupcode>
    And I type password <Password> on registration page
    And I type confirm password <ConfirmPassword>
    And I click register me button
    Then Text <text> appears
    Examples:
      | pageName       | FirstName | LastName | Email            | Groupcode | Password | ConfirmPassword | text                     |
      | "registration" | ""        | "Great"  | "test@gmail.com" | "AAA"     | "12345"  | "12345"         | "This field is required" |
      | "registration" | " test"        | "Great"  | "test@gmail.com" | "AAA"     | "12345"  | "12345"         | "Whitespaces are not allowed" |


