@fullRegression
Feature: Quiz Maximum Possible Score
  Scenario: Quiz Maximum Possible Score - Seven Questions
    When I navigate to login page
    And I type Email "teacher3@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "SQA Quiz 4"
    And I click on Add Question button for 7 times
    And I click on a single-choice radio-button for 7 times in 7 quizzes
    And I type "Quiz" in different question fields 7 times
    And I type "Answer" in Option 1 and Option 2 in 7 quizzes
    And I click on option 1 radio-button 7 times in 7 quizzes
    And I select a total of 45 points in "SQA Quiz 4" in 7 questions
    And I click on save button
    And I select "SQA Quiz 4" in the List of Quizzes
    Then "SQA Quiz 4" quiz has a maximum possible score of 45
    And I delete "SQA Quiz 4" from the list of quizzes

  Scenario: Quiz Maximum Possible Score - Five Questions
    When I navigate to login page
    And I type Email "teacher3@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Title Of The Quiz "SQA Quiz 3"
    And I click on Add Question button for 5 times
    And I click on a single-choice radio-button for 5 times in 5 quizzes
    And I type "Describe Agile model" in different question fields 5 times
    And I type "It is a group of software development methods" in Option 1 and Option 2 in 5 quizzes
    And I click on option 1 radio-button 5 times in 5 quizzes
    And I select a total of 34 points in "SQA Quiz 3" in 5 questions version 2
    And I click on save button
    And I select "SQA Quiz 3" in the List of Quizzes
    Then "SQA Quiz 3" quiz has a maximum possible score of 34
    And I delete "SQA Quiz 3" from the list of quizzes
