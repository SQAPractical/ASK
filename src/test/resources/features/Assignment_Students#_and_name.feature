Feature: Assignment - Students # and name (individually or group of students)
  Scenario: Assignment - Students # and name (individually)
    Given I open "login" page
    When I type email "klamont.juni@oilvtc.com"
    And I type password "test12345"
    And I click Sign in button
    And I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign drop-down menu
    And I click on "Capitals" from drop-down menu
    And I choose one student "Dmitry K" from list of students
    And I click on "Give Assignment" button
    Then new assignment "Capitals" appears on the top of the list
    And I click on "Quiz: Capitals"
    Then "Dmitry K" should be present on Capitals assignment

  Scenario: Assignment - Students # and name (group of students)
    Given I open "login" page
    When I type email "klamont.juni@oilvtc.com"
    And I type password "test12345"
    And I click Sign in button
    And I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign drop-down menu
    And I click on "Capitals" from drop-down menu
    And I choose one student "Dmitry K" from list of students
    And I choose second student "Olga Nikolaeva" from list of students
    And I choose third student "Sophia Jones" from list of students
    And I click on "Give Assignment" button
    Then new assignment "Capitals" appears on the top of the list
    When I click on "Quiz: Capitals"
    Then "Dmitry K" should be present on Capitals assignment
    And "Olga Nikolaeva" should be present on Capitals assignment
    And "Sophia Jones" should be present on Capitals assignment