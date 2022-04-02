Feature: User's Management - Options in Student's account

  Scenario: User's management - Options in Student's account - Change User's Role
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left side menu
    And I select "Students" to open list of students
    And I click on "Ranjjani Ravi" from the list
    And I click on "Options" button on right side
    And I click on change role
    Then Message as "User will become a TEACHER and have access to all ADMIN features. Are you sure want to change ROLE for this user?" appears
    And I click on "Change Role" button
    Then User role is "TEACHER" is displayed

        # Change the user role back
    And I click on "Management" on left side menu
    And I select "Teacher" to open list of teacher
    And I click on "Ranjjani Ravi" from the list
    Then User role is "TEACHER" is displayed
    And I click on "Options" button on right side
    And I click on change role
    Then Message as "User will become a STUDENT and lose access to all ADMIN features. Are you sure want to change ROLE for this user?" will appear
    And I click on "Change Role" button

  Scenario: User's management - Options in Student's account - Delete User
      # For Delete user test case you need to register an account first. No need to activate and then Delete
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "User"
    And I type email "svetik67zaiceva@storebas.fun"
    And I type group code "REF"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered" appears
      #Delete user
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left side menu
    And I select "Students" to open list of students
    And I click on "Test User" from the list of students
    And I click on "Options" button on right side
    And I click on "Delete User" button at the bottom
    Then Message "Are you sure you want to delete Test User?" is displayed
    And I click on "Delete" button from the Popup window
    And Student "Test User" is not present on list of users

























