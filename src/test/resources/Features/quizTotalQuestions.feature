Feature: Quiz - Total Questions
  Scenario: Quiz - Total Questions - Happy Path (with for loop)
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "Test0012"
    And I created 6 questions
    And I click on Save button
    Then text "Test0012" appears


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
    Then text "Test 50 questions" appears

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
    Then text "Test 51 question" appears