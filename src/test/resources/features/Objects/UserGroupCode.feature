Feature: User - Group Code
  Scenario: User - Group Code alphanumeric and special character
    Given I navigate to "registration" page
    When I type first name "Roma"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTT"
    And I type password "123455"
    And I type confirm password "123455"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."

  Scenario2: User -  Group code
    Given I navigate to "registration" page
    When I type first name "Roma"
    And I type last name "Test"
    And I type email "roman.rybak98@gmail.croml"
    And I type group code "TTT"
    And I type password "123455"
    And I type confirm password "123455"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."