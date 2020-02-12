Feature: User - First name

  Scenario Outline: User - first name - Alphanumeric and special char
    Given I open registration page
    And I type first name "<FirstName>"
    And I type last name "Petrov"
    And I type email "example1@gmail.com"
    And I type group code "XVZ"
    And I type password "12345"
    And I confirm password "12345"
    Then I click Register Me button
    And I wait for 3 sec
    Then "<Message>" message appears
    Examples:
    | FirstName | Message |
    | Ivan123#  | You have been Registered |
    |           | This field is required   |



