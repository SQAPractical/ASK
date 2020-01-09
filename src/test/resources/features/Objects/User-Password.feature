Feature: User - Password
  Scenario: User - Password-alphanumeric and special characters
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password "12345abc@"
    And I type confirm password "12345abc@"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."

    Scenario: User-Password can not be empty
      Given I navigate to "registration" page
      When I type first name "Slava"
      And I type last name "Klimov"
      And I type email "slavaklimov@gmail.com"
      And I type group code "aaa"
      And I type password ""
      And I type confirm password ""
      When I click sign up button
      Then I get message contains "This field is required"


  Scenario: User-Password minimum 5 characters
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password "12345"
    And I type confirm password "12345"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."


  Scenario: User-Password 32 characters
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password "12341234123412341234123412341234"
    And I type confirm password "12341234123412341234123412341234"
    When I click sign up button
    Given I get confirm message contains "You have been Registered."


  Scenario: USER-Password - White spaces are not allowed
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password " "
    And I type confirm password " "
    When I click sign up button
    Then I get error message contains "Whitespaces are not allowed"


  Scenario: USER-Password - White spaces are not allowed
    Given I navigate to "registration" page
    When I type first name "Slava"
    And I type last name "Klimov"
    And I type email "slavaklimov@gmail.com"
    And I type group code "aaa"
    And I type password "12345"
    And I type confirm password "123456"
    When I click sign up button
    Then I get alert message contains "Entered passwords should match"








