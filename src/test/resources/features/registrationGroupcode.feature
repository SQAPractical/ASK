Feature: registration group code
  Background:
    Given I open "registration" page

  Scenario: verify group code accepting - alphanumeric and special characters
    When I type first name "Dan"
    And I type last name "Pix"
    And I type email "emel.kellies2@namakuirfan.com" on registration page
    And I type group code "A!2#$%"
    And I type password "test123" on registration page
    And I type confirm password "test123"
    And I click register me button
    And I wait 3 seconds
    Then Text "You have been Registered." appears

  Scenario Outline: registration first name field is required
    When I type first name "Dan"
    And I type last name "Pix"
    And I type email "emel.kellies@namakuirfan.com" on registration page
    And I type group code <GroupCode>
    And I type password "test123" on registration page
    And I type confirm password "test123"
    And I click register me button
    And I wait 2 seconds
    Then Text <text> appears
    Examples:
      | GroupCode | text                          |
      | ""        | "This field is required"      |
      | "1234567" | "Too long. Should be no more than 6 characters" |
      | " test"   | "Whitespaces are not allowed" |