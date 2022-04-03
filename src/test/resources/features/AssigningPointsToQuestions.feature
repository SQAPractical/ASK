Feature: Assigning points to quiz question
  Background:
    Given I am logged in with email "teacher2@gmail.com" and password "12345Abc"

  Scenario:I am able to create a quiz and assign points with the slider
#    When I have created a quiz with a single Textual question
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Test assigning points" title of the quiz
    And I click on Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Test1" as a question for question 1
    And I type text "op1" of option 1 for question 1
    And I type text "op2" of option 2 for question 1
    And I select option 1 as correct answer for "Single-Choice" question 1
    And I move the slider to assign 7 points to the question 1
    And I click on Add question button
    And I select "Textual" question type for question 2
    And I type text "Test2" as a question for question 2
    And I move the slider to assign 3 points to the question 2
    And I click "Save" button
    Then Quiz "Test assigning points" is saved in list of quizzes
    And I select quiz "Test assigning points" to verify the total points 10 are correct and delete it



