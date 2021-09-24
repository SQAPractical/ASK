Feature: Multiple-choice question-Options
  Scenario: Multiple-choice question-Options-Options - User can choose any Answer
    When I navigate to login pag
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Quizzes" menu item
    And I click Create new quiz button
    And I type quiz title "Cities"
    And I click Add question button
    And I select Question type "Multiple-Choice" for question 1
    And I type text "My text" for question 1
    And I type text "First option" for Option 1 for question



