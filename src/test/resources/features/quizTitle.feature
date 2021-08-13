Feature: Quiz - Title
  Scenario: Quiz - Title - Alphanumeric and sp char
    When I navigate to the login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click the Sign In button
    And I click on "Quizzes" on left
    And I click on the Create New Quiz button
    And I type title of the quiz "abc123$#@!"
    And I click Add Question button
    And I select "Textual" type of question for question "1"
    And I type text "text" of question "1"
    And I click the Save button
    Then I select quiz "abc123$#@!" from the list of quizzes
    And I click the Preview button for quiz "abc123$#@!"
    And I click the Close button
    And I delete the quiz "abc123$#@!"