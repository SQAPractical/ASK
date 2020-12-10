Feature: Quiz - Total Questions
  Scenario: Quiz - Total Questions - Happy Path
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "Test0012"
    And I click Add Question button
    And I check Textual Q1 radio button
    And I type Question Q1 "test1"
    And I click Add Question button
    And I check Textual Q2 radio button
    And I type Question Q2 "test2"
    And I click Add Question button
    And I check Textual Q3 radio button
    And I type Question Q3 "test3"
    And I click Add Question button
    And I check Textual Q4 radio button
    And I type Question Q4 "test4"
    And I click Add Question button
    And I check Textual Q5 radio button
    And I type Question Q5 "test5"
    And I click Add Question button
    And I check Textual Q6 radio button
    And I type Question Q6 "test6"

    And I click on Save button


    Then text "Test0012" appears
