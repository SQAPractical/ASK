Feature: Quiz - Total Questions
  Scenario: Verify if a new quiz needs a minimum of 1 question
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question
    Then Text "Q1" appears


  Scenario: Verify if max number of questions possible is 50
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question
    Then Text "Q1" appears
    Then I click another Add Question max button
    Then Text "Q50" appears

  Scenario: Verify if quiz will allow 51 questions
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I wait 3 seconds
    Then Text "TEACHER" appears
    And I click Quizzes button
    And I click Create new quiz
    Then I type title of the quiz "SQA Quiz"
    And I click Add question
    Then Text "Q1" appears
    Then I click another Add Question max+one button
    Then Text "Q51" appears

