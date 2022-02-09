Feature: Single Choice Question - Options
  Scenario: Single Choice Question - Options - 2 Options with correct answer
    When I navigate to login page
    And I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "Test Quiz 123"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Favorite color?" for question 1
    And I type text "White" for option 1 for question 1
    And I type text "Black" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click "Save" button
    Then Quiz "Test Quiz 123" is present in list of quizzes




