@Regression @gauri
Feature: assign_quiz

  Scenario: Assign quiz
    Given I open login page
    Then I type email "umzingelte@polioneis-reborb.com"
    Then I type password "mynewpassword"
    And I click Sign in button
    And I click on Quizzes menu item
    And I click Create new quiz button
    And I type quiz name "Quiz name"
    And I click on Add Question button
    Then I click  button Single choice
    Then I type in question field "Quiz IJ"
    And I type in first field "API test"
    And I type in second field "Regression test"
    Then I select first Option is correct answer
    Then I click on Save button



  Scenario: Quiz_assign
    Given I open login page
    Then I type email "umzingelte@polioneis-reborb.com"
    Then I type password "mynewpassword"
    And I click Sign in button
    And click on Assignments on left menu
    Then click on Create New Assignment
    And I click on select quiz
    And I click on Quiz name
    And I click on Select All


