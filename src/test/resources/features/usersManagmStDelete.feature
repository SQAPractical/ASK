@fullRegression
Feature: User's management - Options in Student's account

  Scenario: First - Create test account
    Given I navigate to Email Generator
    When I click on copy button and save generated email
    And I navigate to registration page in new tab
    And I type first name "Kate"
    And I type last name "Smith"
    And I type generated email
    And I type group code "TTT"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me
    Then Message "You have been Registered." Appears
    When I switch tab to 1
    And I click on "Confirm email address" button in email
    And I switch tab to 2
    And I click on Back To Login Page button
    And I type generated email on Login page
    And I type password "12345" on login page
    And I click on sing in button
    Then "home" page loaded

  Scenario: User's management - Options in Student's account - Change group - Alphanumeric and special characters
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I type New User's Group "IA13@$"
    And I click Change on Confirmation dialog
    Then group changed on User Details page

  Scenario: User's management - Options in Student's account - Change group - Field is required
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I remove text from New User's Group field
    And I click Change on Confirmation dialog
    Then "This field is required" message appears on Confirmation dialog

  Scenario: User's management - Options in Student's account - Change group - Maximum characters
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I type New User's Group "Group7"
    And I click Change on Confirmation dialog
    Then group changed on User Details page

  Scenario: User's management - Options in Student's account - Change group - Maximum characters + 1
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I type New User's Group "Group71"
    And I click Change on Confirmation dialog
    Then "Too long. Should be no more than 6 characters" message appears on Confirmation dialog

  Scenario: User's management - Options in Student's account - Change group - Minimum characters
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I type New User's Group "G"
    And I click Change on Confirmation dialog
    Then group changed on User Details page

  Scenario: User's management - Options in Student's account - Change group - Whitespaces not allowed
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Change User's Group button
    And I type New User's Group "G 1"
    And I click Change on Confirmation dialog
    Then "Spaces are not allowed" message appears on Confirmation dialog

  Scenario: Last - User's management - Options in Student's account - Delete user
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I navigate to Users Management page
    And I choose student account "Kate Smith"
    And I click on Options settings button
    And I click on Delete User button
    And I click on Delete button on Confirmation dialog
    Then student "Kate Smith" deleted