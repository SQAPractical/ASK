@UM
Feature: User Management Role and Delete
  Scenario: Change Role
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click on username "eva P"
    And I click on Options button on right side
    And I click on change role
    And I click on "Change Role" button
    And I click on Options button on right side
    And I click on change role
    And I click on "Change Role" button

  Scenario: User Management - Delete teacher
  # For Delete test case you need to register an account firstly. No need to activate.
    When I navigate to registration page
    And I type first name "Test"
    And I type last name "DeleteTestUser"
    And I type email "test1@test.com"
    And I type group code "123456"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears
  # For Delete test case you need to register an account firstly. No need to activate.
  # Just login with existing teacher, change role for new student to teacher and then delete.
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Management" on left menu
    And I click on username "Test DeleteTestUser"
    And I click on Options button on right side
    And I click on change role
    And I click on "Change Role" button
    And I click on Options button on right side
    And I click on Delete User button
    And I click on "Delete" button
    Then User "Test DeleteTestUser" is not present on list of users
