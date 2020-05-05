Feature: maxPossibleScore

  Scenario: maxPossibleScore
    Given I open login page
    Then I type email "gauri.agasti@gmail.com"
    And I type password "56789"
    And I click Sign in button
    Then I wait for 3sec
    Then I click on Quizzes tab
    Then I wait for 3sec
    Then I click on create new quiz button
    Then I type "Rapid Score Check" in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on textual radio button
    Then I type "question" field














