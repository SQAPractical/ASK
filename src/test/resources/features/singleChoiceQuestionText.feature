@FullRegression
Feature: Single Choice Question - Text
  @Smoke
  Scenario: Single Choice Question - Text - Alphanumeric and Special characters are allowable
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click on Create New Quiz button
    And I type quiz title "TestTitle"
    And I click Add question button
    And I select "Single-Choice" type of question for question 1
    And I type text "test123!@#$%" of question 1
    And I type text "option1" for option 1 for question 1
    And I type text "option2" for option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click Save button
    And I select quiz "TestTitle" from list of quizzes
    And I click Preview button for quiz "TestTitle"
    Then Message "test123!@#$%" appears
    And I click Close button
    And I delete quiz "TestTitle"
