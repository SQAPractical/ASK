Feature: Multiple Choice Question - Text
  Scenario: Multiple Choice Question - Text - Not allowed to have over 15 options
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on Quizzes menu button N
    And I click on Create New Quiz button
    And I type Quiz Title "Ntest - Max 15 options"
    And I click on Add Question button N
    And I click on Multiple-Choice radio button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    And I click on Add Option button
    Then Button Add Option is disabled
