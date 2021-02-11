Feature: Registration - First name
  Scenario: Registration-First Name-latin characters
    Given I navigate to registration page
    When i type first name "Malika"
    And I type last name "Yusupova"
    And i type group code "111"
