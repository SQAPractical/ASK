Feature: "Single choice question - Options"
  Scenario: Single choice question - Options - 2 options
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz AG4"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "What is SQA" for question 1
    And I type text "ABC" for option 1 for question 1
    And I type text "CAB" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Quiz "Quiz AG4" appears in list of quizzes
    And I click on Preview button for quiz "Quiz AG4"
    Then Options with text "ABC" and "CAB" id displayed
    And I click Close button
    And I delete Quiz"Quiz AG4"
    And test
