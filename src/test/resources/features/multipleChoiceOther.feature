Feature: Multiple Choice Other text area

  Scenario: Multiple-Choice question includes "Other" text area
    Given I open "login" page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then Text "TEACHER" appears
    When I click on "Quizzes" option button
    And I click on "Create New Quiz" option button
    And I type "Quiz_Test1" into "Title Of The Quiz" input field

