Feature: Registration Group Code

  Scenario: Group Code - Alphanumeric & Special characters
    Given I open "registration" page
    When I type first name "FName" on registration page
    And I type last name "LName" on registration page
    And I type email "test@gmail.com" on registration page
    And I type group code "A16!" on registration page
    And I type password "12345" on registration page
    And I type confirm password "12345" on registration page
    And I click Register Me button
    Then text "You have been Registered" appears

  Scenario Outline: Group Code - Field is required
    Given I open <pageName> page
    When I type first name <firstName> on registration page
    And I type last name <lastName> on registration page
    And I type email <email> on registration page
    When I click on element with xpath "//input[@formcontrolname='group']"
    When I click on element with xpath "//input[@formcontrolname='password']"
    Then text <text> appears
    Examples:
      | pageName       | firstName | lastName | email            | text                     |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "This field is required" |

  Scenario: Group Code - Min 1 character
    Given I open "registration" page
    When I type first name "FName" on registration page
    And I type last name "LName" on registration page
    And I type email "test@gmail.com" on registration page
    And I type group code "A" on registration page
    And I type password "12345" on registration page
    And I type confirm password "12345" on registration page
    And I click Register Me button
    Then text "You have been Registered" appears

  Scenario Outline: Group Code - Max 6 characters, 6+1 rejected
    Given I open <pageName> page
    When I type first name <firstName> on registration page
    And I type last name <lastName> on registration page
    And I type email <email> on registration page
    And I type group code <groupCode> on registration page
    When I click on element with xpath "//input[@formcontrolname='password']"
    Then element with xpath "//input[@placeholder='Group Code']/../../.." should be present
    When I type password <password> on registration page
    And I type confirm password <confirmPassword> on registration page
    And I click Register Me button
    Then text <text> appears
    Examples:
      | pageName       | firstName | lastName | email            | groupCode | password | confirmPassword | text                                            |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "Test!2A" | "12345"  | "12345"         | "Too long. Should be no more than 6 characters" |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "Test!2" | "12345"  | "12345"         | "You have been Registered" |

  Scenario Outline: Group Code - White spaces are not allowed inside, before, after input
    Given I open <pageName> page
    When I type first name <firstName> on registration page
    And I type last name <lastName> on registration page
    And I type email <email> on registration page
    And I type group code <groupCode> on registration page
    And I type password <password> on registration page
    And I type confirm password <confirmPassword> on registration page
    And I click Register Me button
    Then text <text> appears
    Examples:
      | pageName       | firstName | lastName | email            | groupCode | password | confirmPassword | text                                            |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "T est!" | "12345"  | "12345"         | "White spaces are not allowed" |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | " Test!" | "12345"  | "12345"         | "White spaces are not allowed" |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "Test! " | "12345"  | "12345"         | "White spaces are not allowed" |
      | "registration" | "FName"   | "LName"  | "test@gmail.com" | "Test!" | "12345"  | "12345"         | "You have been Registered" |
