Feature: User's Management - Option Student Account
  Scenario: User's Management - Option Student Account - Delete Student

    When I navigate to registration page
    And I type first name "Anna"
    And I type last name "Test"
    And I type my email "oth39@ecallen.com"
    And I type group code "12ABC"
    And I type password "12345Abc"
    And I confirm password "12345Abc"
    And I click Register Me button
    Then Message "You have been Registered." appears

    And I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Management" on left menu
    And I click on "Students" on top menu
    And I click on "Anna Test" from students list to delete
    And I click on options button
    And I click on delete icon
    And I click on delete for confirmation
    And I confirm that student "Anna Test" is deleted