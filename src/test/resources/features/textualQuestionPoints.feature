#Created by Almir 10/19/20
@fullregression
Feature: Textual Question - Points

  Scenario: Verify that Maximum possible score is calculated correctly at creating Quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click quizzes on left menu
    And I click on Create New Quiz at the bottom of the page
    And I type "Quiz with Points01" in Title Of The Quiz field
    And I click Add Question underneath the Title
    And I select Question type: Textual
    And I select Points per question: "5"
    And I type the question "Question 1" in to Question field
    And I click Add Question underneath the Title
    And I select Question type: Textual
    And I select Points per question: "1"
    And I type the question "Question 2" in to Question field
    And I click Add Question underneath the Title
    And I select Question type: Textual
    And I select Points per question: "10"
    And I type the question "Question 3" in to Question field
    And I click SAVE on the bottom right corner
    And I click on created quiz "Quiz with Points01" from the Quiz List
    Then Maximum possible score match with the sum of points

