Feature: Change User's Group
  Scenario: User's management - Options in Student's account - Change User's Group - Changed
    When I navigate to login page
    And I type email "test1.evop@yahoo.com"
    And I type password "123edcXZ"
    And I click on Sign In button
    And I click on the "User's Management"
    And I click on "Evgeniy Student"
    And I click on the button "Options"
    And I click on the button "Change User's Group"
    And I clear text field "New User's Group"
    And I type newGroup "New User's Group" "ABC"
    And I click on "Change"
    Then "ABC" appears








