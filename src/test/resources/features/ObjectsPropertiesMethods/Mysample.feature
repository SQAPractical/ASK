@Objects
Feature: User - First name
  @Sanity
  Scenario: User - First name: Alphanumeric and special characters
    Given I navigate to "registration" page
    When I type First Name "abc123#"
    And I type Last Name "qwert"