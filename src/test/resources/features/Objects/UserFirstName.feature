Feature: User - First Name
  Scenario Outline: User - First Name - Alphanumeric and special characters
    Given I open registration page
    And I type First Name "<FirstName>"
    And I type Last name "Ivanov"
    And I type email "testz@gmail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    And I wait for 4 seconds
    Then "<Message>" message appears
Examples:
    |FirstName|Message|
    |Ivan123# |You have been Registered.|
    |         |This field is required   |
    | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfff | You have been Registered.|
    | herdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsdherdtsdgfsarsfffe| Too long |

