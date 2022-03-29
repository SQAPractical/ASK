Feature: Single Choice Question - Options
  Scenario: Single Choice Question - Options - Alphanumeric and special characters
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "Test Single Choice" title of the quiz
    And I click on Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Test" as a question for question 1
    And I type text "ABC123!@#$"g of option 1 for question 1
