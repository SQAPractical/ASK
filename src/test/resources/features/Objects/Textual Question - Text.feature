Feature: Textual question-Text
  Scenario: Textual Question- Text- Alphanumeric & Sp. characters
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password "12345abc@"
    And I type confirm password "12345abc@"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."