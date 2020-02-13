Feature: User - First Name
  Scenario Outline: User - First Name - Alphanumeric and special characters
    Given I open registration page
    And I type first name "<FirstName>"
    And I type last name "Ivanov"
    And I type email "example@mail.com"
    And I type group code "ABC"
    And I type password "12345"
    And I type confirm password "12345"
    And I click Register me button
    Then "<Message>" message appears
    Examples:
    | FirstName | Message |
    | Ivan123#  | You have been Registered.|
    |           | This field is required   |
    | lkjesflkjdslfklij.,sslkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslf | You have been Registered.|
    | lkjesflkjdslfklij.,sslkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslfklij.,slkjesflkjdslff | Too long |



