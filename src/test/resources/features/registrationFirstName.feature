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
    And I wait 3 seconds
    Then Text "You have been Registered." appears

  Scenario Outline: registration first name field is required
    When I type first name <FirstName>
    And I type last name "Great"
    And I type email "test@gmail.com" on registration page
    And I type group code "AAA"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click register me button
    And I wait 2 seconds
    Then Text <text> appears
    Examples:
      | FirstName | text                     |
      | ""        | "This field is required" |
      | " abc"    | "Whitespaces are not allowed" |
      | "T"       | "You have been Registered" |
      | "Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%ed" | "Too long. Should be no more than 254 characters" |
      | "Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%Test123$%e" | "You have been Registered" |
