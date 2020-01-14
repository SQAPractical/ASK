Feature: User - Group Code
  @Acceptance
  Scenario: User -  Group code - Alphanumeric & Special characters
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.cromliI"
    And I type group code "TTT123#$"
    And I type password "123455"
    And I type confirm password "123455"
    And I click Register me button
    Then I get confirm message contains "You have been Registered."
  @Acceptance
  Scenario: User-Group Code - Can't be empty
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type password "123455"
    And I type confirm password "123455"
    And I click Register me button
    Then I get confirm message contains "This field is required"

  @Regression
  Scenario: User - Group Code - max char
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTTTTddd"
    And I type password "12345566"
    And I type confirm password "12345566"
    And I click Register me button
    Then I get confirm message contains "You have been Registered."

  @Regression
  Scenario: User-Group Code - MAX+1
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTTT "
    And I type password "12345566"
    And I type confirm password "12345566"
    And I click Register me button
    Then I get confirm message contains "Maximum of 6 character as group code"
  @Sanity
  Scenario: User-Group Code  Whitespace not allowed
    Given I navigate to "registration" page
    When I type first name "Natalia"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTTTT "
    And I type password "12345566"
    And I type confirm password "12345566"
    And I click Register me button
    Then I get confirm message contains "Whitespaces are not allowed"
