Feature: Registration - Group Code
  Scenario: Registration - Group Code - Alphanumeric and sp char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "mahmedaboelfe@oreple.com"
    And I type groupcode "ABDC"
    And I type password "123456"
    And I confirm password "123456"
    And I click Register me button
    Then message "You have been Registered." appears


  Scenario: Registration - Group Code - field is required
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "mahmedaboelfe@oreple.com"
    And I type groupcode ""
    And I type password "123456"
    And I confirm password "123456"
    And I click Register me button
    Then message "Field is required" appears
