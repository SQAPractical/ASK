Feature: Registration - First Name
  Scenario: Registration - First Name - Latin char
    Given I navigate to registration page
    And I type First Name "Stef"
    And I type Last Name "Stanton"
    And I type Email "test@test.com"
    And I type Group Code "Test"
    And I type Password "12345Abc"
    And I confirm Password "12345Abc"
    And I click on Register  button
    Then Text "Then Text "You have been Registered." appears


