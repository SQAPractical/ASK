Feature: User's management - Options in Teacher’s account
  Scenario: User's management - Options in Teacher’s account - Change role
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Management" menu item
    And I click on "Teachers" tab
    And I click on "Diana Brown" name
    And I click on "Options"
    And I click on Change User's Role
    And I confirm Change role
    And I click on "Options"
    And I click on Change User's Role
    And I confirm Change role

