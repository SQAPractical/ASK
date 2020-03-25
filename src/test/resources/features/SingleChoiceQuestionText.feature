Feature: Single Choice Question - Text
  Scenario: fill the field with Alphanumeric & Sp. characters
    Given I navigate to login page
    When I type email "vpmawork@gmail.com"
    And I type password "12345"
    And I click "Sign In" button
    Then I should see page title contains "Assessment Control"

