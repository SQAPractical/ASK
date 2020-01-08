Feature: User - Group Code

  Scenario: User -  Group code
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.cromliI"
    And I type group code "TTT"
    And I type password "123455"
    And I type confirm password "123455"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."

  Scenario: User-Group Code - Can't be empty
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code " "
    And I type password "123455"
    And I type confirm password "123455"
    When I click sign up button
    Given I get confirm message contains "This field is required"


  Scenario: User-Group Code
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTTTT "
    And I type password "12345566"
    And I type confirm password "12345566"
    When I click sign up button
    Given I get confirm message contains "Maximum of 6 character as group code"


  Scenario: User-Group Code USER-GROUP CODE- MAX of 6 char
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTTT "
    And I type password "12345566"
    And I type confirm password "12345566"
    When I click sign up button
    Given I get confirm message contains "Maximum of 6 character as group code"

  Scenario: User-Group Code  Whitespace not allowed
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTT "
    And I type password "12345566"
    And I type confirm password "12345566"