Feature: User's management - Options in Student's account
  Scenario: User's management - Options in Student's account - Change User's Group - Alphanumeric and Special Characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click "Students" tab
    And I click "Jon Snow" student with "ABC" group
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    And I type new group "Ab12!@" into group field
    And I click Change button
    Then I verify that "Group" is updated with new "Ab12!@" group
    #Return to default
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    And I type new group "ABC" into group field
    And I click Change button
    Then I verify that "Group" is updated with new "ABC" group

   Scenario: User's management - Options in Student's account - Change User's Group - Field Required
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click "Students" tab
    And I click "Jon Snow" student with "ABC" group
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    Then Message "This field is required" appears

  Scenario: User's management - Options in Student's account - Change User's Group - Maximum 6 Characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click "Students" tab
    And I click "Jon Snow" student with "ABC" group
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    And I type new group "Ab11!@" into group field
    And I click Change button
    Then I verify that "Group" is updated with new "Ab11!@" group
     #Return to default
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    And I type new group "ABC" into group field
    And I click Change button
    Then I verify that "Group" is updated with new "ABC" group

  Scenario: User's management - Options in Student's account - Change User's Group - Maximum 6 + 1  Characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click "Students" tab
    And I click "Jon Snow" student with "ABC" group
    And I click OPTIONS button
    And I click Change User's "group" from a drop-down menu
    And I clear "Group" input field
    And I type new group "Ab11!@#" into group field
    Then Message "Too long. Should be no more than 6 characters" appears