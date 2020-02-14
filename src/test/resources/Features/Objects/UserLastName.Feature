Feature: User - Last name


  Scenario Outline: User - Last
    Given I open registration page
    And I type first name "JimmyJohns"
    And I type last name "<Last name>"
    And I type email "example@gmail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    And I wait for 3 sec
    Then "<Message>" message appears
    Examples:
      | Last name | Message |
      | Smith123#  |You have been Registered.|
      |Joh n| Whitespaces are not allowed|
      | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfff | You have been Registered.|
      | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfffe| Too long |
      |d|You have been Registered.|
      ||This field is required|


  Scenario: User - Last - WhiteSpace
    Given I open registration page
    And I type first name "JimmyJohns"
    And I type last name '      '
    And I type email "example@gmail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then "Whitespaces are not allowed" message appears