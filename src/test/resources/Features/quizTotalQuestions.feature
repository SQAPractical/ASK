Feature: Quiz - Total Questions
  Scenario: Quiz - Total Questions - Happy Path (with for loop)
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "TestQuiz"
    And I created 6 questions
    And I click on Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "TestQuiz"
    And I click on quiz "TestQuiz"
    And I delete quiz "TestQuiz"


  Scenario: Quiz - Total Questions - Boundary (50 Questions)
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "Test 50 questions"
    And I created 50 questions
    And I click on Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "Test 50 questions"
    And I click on quiz "Test 50 questions"
    And I delete quiz "Test 50 questions"


  Scenario: Quiz - Total Questions - Boundary (51 Questions)
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "Test 51 question"
    And I created 51 questions
    And I click on Save button
    Then text "No more than 50 question allowed" appears
#    Then List of Quizzes page loads
#    Then List of Quizzes contain quiz "Test 51 questions"
#    And I click on quiz "Test 51 questions"
#    And I delete quiz "Test 51 questions"