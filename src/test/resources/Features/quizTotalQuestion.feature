Feature:Quiz Total Questions
  Scenario: Quiz - Total Questions - Teacher can create Quiz (5 questions)
    Given I open "login" page
    Then I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then I click Quizzes button
    And I click Create New Quiz button
    And I type "Test Quiz - 5 questions" on  Title of the Quiz
    And I click Add Question button
    Then I create "5" questions
    And I click save button
    Then Text "Test Quiz - 5 questions" appears
    Then I click "Test Quiz - 5 questions" quiz name
    Then I check TotalQuestion of quiz "Test Quiz - 5 questions"
    Then I click "Delete" button on quiz "Test Quiz - 5 questions"
    Then I confirm "Delete"

  Scenario: Quiz - Total Questions - Teacher can create Quiz (50 questions)
    Given I open "login" page
    Then I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then I click Quizzes button
    And I click Create New Quiz button
    And I type "Test Quiz - 50 questions" on  Title of the Quiz
    And I click Add Question button
    Then I create "50" questions
    And I click save button
    Then Text "Test Quiz - 50 questions" appears
    Then I click "Test Quiz - 50 questions" quiz name
    Then I check totalQuestion of quiz "Test Quiz - 50 questions"
    Then I click "Delete" button on quiz "Test Quiz - 50 questions"
    Then I confirm "Delete"

  Scenario: Quiz - Total Questions - Teacher can create Quiz (51 questions)
    Given I open "login" page
    Then I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then I click Quizzes button
    And I click Create New Quiz button
    And I type "Test Quiz - 51 questions" on  Title of the Quiz
    And I click Add Question button
    Then I create "51" questions
    Then Text "Allows up to 50 questions" appears

