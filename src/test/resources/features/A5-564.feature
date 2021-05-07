Feature: User's management - Change group Option in Student's account
  Scenario: Options in Student's account - Change User's Group
    When I navigate to login page
    And I type "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sing In button
    And I click on "User's management" menu item
    And I click on "Jon Snow" account
    And I click on "Option" button
    And I click on "Change user's group"
    And I type "ABC" in "New user's group" input field
    And I click on "Change" changeButton
    Then displayed Group "ABC"

  Scenario: Change User's Group - White Space in Group Code
    When I navigate to login page
    And I type "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sing In button
    And I click on "User's management" menu item
    And I click on "Jon Snow" account
    And I click on "Option" button
    And I click on "Change user's group"
    And I type "A B C" in "New user's group" input field
    And I click on "Change" changeButton
    Then disabled "Change" button



