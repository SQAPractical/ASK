Feature: Registration - Password/Confirm password

  Scenario: Registration Password/Confirm Password - Alphanumeric and special characters
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "abc123$%^"
    And I type confirm password "abc123$%^"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Field is required - cannot be empty
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Minimum (5) characters
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "abc12"
    And I type confirm password "abc12"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Minimum-1 (4) characters
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "abc1"
    And I type confirm password "abc1"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Maximum (32) characters
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "MaximumMaximumMaximumMaximumMaxi"
    And I type confirm password "MaximumMaximumMaximumMaximumMaxi"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Maximum (32)+1 characters
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "MaximumMaximumMaximumMaximumMaximum"
    And I type confirm password "MaximumMaximumMaximumMaximumMaximum"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Whitespaces are not allowed
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "Maximum Maximum"
    And I type confirm password "Maximum Maximum"
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Leading Spaces are not allowed
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "Maximum "
    And I type confirm password "Maximum "
    Then I click on "Register Me" button

  Scenario: Registration Password/Confirm Password - Password should Match
    When I navigate to registration page
    Then I fill out First name "Ivan"
    And I fill out Last name "Ivanov"
    And I fill out email "abc@abc.com"
    And I type group code "abcd"
    And I type password "abc12"
    And I type confirm password "abc13"
    Then I click on "Register Me" button

