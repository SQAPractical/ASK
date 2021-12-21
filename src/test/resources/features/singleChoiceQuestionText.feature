@FullRegression
Feature: Single Choice Question - Text
  Scenario: Single Choice Question - Text - Alphanumeric and special char
    When I navigate to log in page
    And I type email "teacher1@gmail.com" to email field
    And I type password "12345Abc" to log in
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type quiz title "SQA"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text of question "qqwdeqnd13245 %^&&" for question 1
    And I type text of option 1 "ABC" for question 1
    And I type text of option 2 "CAB" for question 1
    And I select option 1 as correct answer for question 1
    And I click "Save" button
    And I click on quiz "SQA" in list of quizzes
    And I click Preview for quiz "SQA"
    Then Message "qqwdeqnd13245 %^&&" appears