Feature: registration first name

  Background:
    Given I open "registration" page

  Scenario: registration first name - alpha numeric characters
    When I type first name "Jonny1"
    And I type last name "Great"
    And I type email "test@gmail.com" on registration page
    And I type group code "AAA"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click register me button
    Then Text "You have been Registered." appears

  Scenario Outline: registration first name field is required
    When I type first name <FirstName>
    And I type last name "Great"
    And I type email "test@gmail.com" on registration page
    And I type group code "AAA"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click register me button
    Then Text <text> appears
    Examples:
      | FirstName | text                          |
      | ""        | "This field is required"      |
      | " test"   | "Whitespaces are not allowed" |



