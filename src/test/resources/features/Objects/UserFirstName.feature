Feature: User - First name

  Scenario Outline: User - First name - Alphanumeric and special char
    Given I open registration page
    When I type first name "<FirstName>"
    And I type last name "I"
    And I type email "example@gmail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    And I wait for 3 sec
    Then "<Message>" message appears
    Examples:
    | FirstName | Message |
    | Ivan123#  |You have been Registered.|
    |           | This field is required  |
    | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfff | You have been Registered.|
    | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfffe| Too long |