Feature: Quiz - Total Questions

  @quizTotalQuestion1
  Scenario: Verify if a new quiz needs a minimum of 1 question
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    Then I click "Quizzes" button


  @quizTotalQuestion2
  Scenario: Quiz - Total Questions - 50 questions

  @quizTotalQuestion3
  Scenario: Quiz - Total Questions - 51 questions