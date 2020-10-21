Feature: Home page - Links
  Scenario:Home page - Links "Go to My Assignments" link under the Student's account
    Given I open "login" the page
    When I type email "student5@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click Go to My Assignments button
    And text "My Assignments" appears

  Scenario: Home page - Links "Go to My Grades" under Student's account
    Given I open "login" page
    When I type email "student5@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click Go to My Grades button
    And text "My Grades" appears

  Scenario: Home page - Links "Go to Submissions" declared page under Teacher's account
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click Go To Submissions button
    And text "Submissions" appears

  Scenario: Home page - Links "Go to Assignments" declared page under Teacher's account
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click Go To Assignments button
    And text "List of Assignments" appears


    Scenario: Home page - Links "Go to User's Management" link takes the user to the declared page under Teacher's account
      Given I open "login" page
      When I type email "teacher1@gmail.com" on login page
      And I type password "12345Abc" on login page
      And I click Sign in button
      Then I click Go to Users Management button
      And text "User's Management" appears






















