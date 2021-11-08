<<<<<<< HEAD
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
=======
Feature: Registration- Group Code

  Background:
    When I navigate to registration page

  Scenario Outline: Registration- Group Code - Alphanumeric and sp char
    And I type first name <fName>
    And I type last name <lName>
    And I type my email <email>
    And I type group code <groupCode>
    And I type password <password>
    And I confirm password <password>
    And I click Register Me button
    Then Message <mesg> appears
    Examples:
      | fName  | lName  | email                              | groupCode | password | mesg                        |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "12AB@"   | "12345"  | "You have been Registered." |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | ""        | "12345"  | "This field is required" |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "12AB@Q"  | "12345"  | "You have been Registered." |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "12AB@Qa"  | "12345" | "Too long. Should be no more than 6 characters" |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "1"       | "12345" | "You have been Registered." |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "  1"      | "12345" | "Whitespaces are not allowed" |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "1 ds"      | "12345" | "Whitespaces are not allowed" |
      | "Test" | "Test" | "smohamedalaa22223@caraparcal.com" | "1ds "      | "12345" | "Whitespaces are not allowed" |


>>>>>>> master
