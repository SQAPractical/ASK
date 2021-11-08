Feature: Settings - Password
  Scenario: Settings - Password - Alphanumeric and special characters
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click Change Your Password button
    And I type password "12345Abc"
    And I type new password "smith!@#123"
    And I type confirm new password "smith!@#123"
    And I click Change button