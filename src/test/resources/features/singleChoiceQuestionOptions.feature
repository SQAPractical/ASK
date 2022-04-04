Feature: Single Choice Question - Options
  @smoke
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
    And I type text "ABC123!@#$" of option 1 for question 1
    And I type text "!@#$ACB134" of option 2 for question 1
    And I select option 1 as correct answer for "Single-Choice" question 1
#    And I click on Add question button
#    And I select "Multiple-Choice" question type for question 2
#    And I type text "Testdddd" as a question for question 2
#    And I type text "ABC123!@#$" of option 1 for question 2
#    And I type text "!@#$ACB134" of option 2 for question 2
#    And I select option 2 as correct answer for "Multiple-Choice" question 2
    And I click "Save" button
    Then Quiz "Test Single Choice" is saved in list of quizzes
    And I delete quiz "Test Single Choice"

