@fullRegression
Feature: Quiz - Maximum possible score AC29-590
  Scenario: Quiz - Maximum possible score- One question quiz
    Given I open "login" page
    And I type login email "qa.sofi@gmail.com"
    And I type login password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type "DANATEST" for the name of quiz
    And I click Add Question button
    And I check Textual ratio button
    And I type question "DANATEST"
    And I slide to maximum 10 points
    And I click Save button
   And I verify score is 10 in "DANATEST"
    Then I delete quiz "DANATEST"

  Scenario: Quiz - Maximum possible score- Multiple questions quiz
    Given I open "login" page
    And I type login email "qa.sofi@gmail.com"
    And I type login password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I click Create New Quiz button
    And I type "DANATEST" for the name of quiz
    And I click Add Question button
    And I click single-choice button
    And I type question "DANATEST"
    And I type text for Option One answer "AA"
    And I type text for Option Two answer "BB"
    And I click radio button correct answer
    And I slide to maximum 10 points
    And I click Save button
    And I verify score is 10 in "DANATEST"



  Scenario: Quiz - Maximum possible score"- Multiple questions quiz, edit the points manually

    Given I open "login" page
    And I type login email "qa.sofi@gmail.com"
    And I type login password "12345"
    And I click Sign In button
    And I click Quizzes menu item
    And I find "DANATEST" quiz and click "Edit" button
    And I click on first quistion
    And I slide to 8 points
    And I click Save button
    And I verify score is 8 in "DANATEST"
    Then I delete quiz "DANATEST"





