Feature: Assignment - Students # and name (individually or group of students)
  Scenario: Assignment - Students # and name (individually)
    Given I open "login" page
    When I type email "klamont.juni@oilvtc.com"
    And I type password "test12345"
    And I click Sign in button
    And I click Quizzes in the left menu
    And I click Create New Quiz button
    And I type "Capitals" in Title Of The Quiz *
    And I click Add Question button
    And I add first "Multiple-Choice" question saying "What is the answer?"
    And I type "Choice A" in Option one
    And I type "Choice B" in Option two
    And I select option 1 as the correct answer
    And I click Save button
    And I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign drop-down menu
    And I click on "Capitals" from drop-down menu
    And I choose one student "Dmitry K" from list of students
    And I click on "Give Assignment" button
    Then new assignment "Capitals" appears on the top of the list
    And I click on "Quiz: Capitals"
    Then "Dmitry K" should be present on Capitals assignment
    And I click Quizzes in the left menu
    And I click "Capitals"
    And I delete quiz "Capitals"

  Scenario: Assignment - Students # and name (group of students)
    Given I open "login" page
    When I type email "klamont.juni@oilvtc.com"
    And I type password "test12345"
    And I click Sign in button
    And I click Quizzes in the left menu
    And I click Create New Quiz button
    And I type "Capitals" in Title Of The Quiz *
    And I click Add Question button
    And I add first "Multiple-Choice" question saying "What is the answer?"
    And I type "Choice A" in Option one
    And I type "Choice B" in Option two
    And I select option 1 as the correct answer
    And I click Save button
    And I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign drop-down menu
    And I click on "Capitals" from drop-down menu
    And I choose one student "Dmitry K" from list of students
    And I choose one student "Olga Nikolaeva" from list of students
    And I choose one student "Sophia Jones" from list of students
    And I click on "Give Assignment" button
    Then new assignment "Capitals" appears on the top of the list
    When I click on "Quiz: Capitals"
    Then "Dmitry K" should be present on Capitals assignment
    Then "Olga Nikolaeva" should be present on Capitals assignment
    Then "Sophia Jones" should be present on Capitals assignment
    And I click Quizzes in the left menu
    And I click "Capitals"
    And I delete quiz "Capitals"