Feature: Single Choice Question Text

  Scenario: Text fields - Alphanumeric and special characters
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    And Text "Quizzes" appears
    And I click on Quizzes
    And I wait for 5 sec
    And I click on Create New Quiz
    And I wait for 3 sec
    Then Back To Quizzes List appears
    And I type Title "SQA Quiz"
    And I click Add Question
    And I click on Single-Choice option
    And I type "What is 5+4=?"
    And I wait for 3 sec
    And I type "It's 9" for first option
    And I type "It's %" for second option
    And I wait for 3 sec
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears

  Scenario: Text fields - Field is required
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    And Text "Quizzes" appears
    And I click on Quizzes
    And I wait for 5 sec
    And I click on Create New Quiz
    And I wait for 3 sec
    Then Back To Quizzes List appears
    And I type Title "SQA Quiz"
    And I click Add Question
    And I click on Single-Choice option
    And I click Save
    And I wait for 3 sec
    Then Text "Quiz is not completed." appears

  Scenario: Text fields - Min 1 character in text fields
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    And Text "Quizzes" appears
    And I click on Quizzes
    And I wait for 5 sec
    And I click on Create New Quiz
    And I wait for 3 sec
    Then Back To Quizzes List appears
    And I type Title "SQA Quiz"
    And I click Add Question
    And I click on Single-Choice option
    And I type "A"
    And I wait for 3 sec
    And I type "A" for first option
    And I type "A" for second option
    And I wait for 3 sec
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears

  Scenario: Text fields - Max 1000 character in text fields
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    And Text "Quizzes" appears
    And I click on Quizzes
    And I wait for 5 sec
    And I click on Create New Quiz
    And I wait for 3 sec
    Then Back To Quizzes List appears
    And I type Title "SQA Quiz"
    And I click Add Question
    And I click on Single-Choice option
    And I type "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor"
    And I wait for 5 sec
    And I type "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" for first option
    And I type "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" for second option
    And I wait for 3 sec
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears

  Scenario: Text fields - Max+1 (1000+1) characters in text fields are not allowed
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "TEACHER" appears
    And Text "Quizzes" appears
    And I click on Quizzes
    And I wait for 5 sec
    And I click on Create New Quiz
    And I wait for 3 sec
    Then Back To Quizzes List appears
    And I type Title "SQA Quiz Max plus one"
    And I click Add Question
    And I click on Single-Choice option
    And I type "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor"
    And I wait for 5 sec
    And I type "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" for first option
    And I type "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" for second option
    And I wait for 3 sec
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears








