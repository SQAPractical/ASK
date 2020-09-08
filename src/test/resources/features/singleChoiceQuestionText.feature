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
    And I type "It's 9" for first option
    And I type "It's %" for second option
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears

  Scenario Outline: Text fields  - Field is required
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
    And I type <question>
    And I type <option1> for first option
    And I type <option2> for second option
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    Then Text "Quiz is not completed." appears
    Examples:
      | question | option1 | option2 |
      | ""       | "1"     | "2"     |
      | "Question"| ""     | "2"     |
      | "Question"| "1"    | ""      |

  Scenario Outline: Text fields - Min 1 character in text fields
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
    And I type <question>
    And I type <option1> for first option
    And I type <option2> for second option
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears
    Examples:
       | question | option1 | option2 |
       | "Q"      | "Option"| "Ans"   |
       | "Question"| "A"    | "Ans"   |
       | "Question"| "Aba"  | "A"     |

  Scenario Outline: Text fields - Max 1000 character in text fields
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
    And I type <question>
    And I type <option1> for first option
    And I type <option2> for second option
    And I click first option as answer
    And I click Save
    And I wait for 3 sec
    And List of Quizzes appears
    And I wait for 5 sec
    Then quiz "SQA Quiz" appears
    Examples:
      | question                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | option1       | option2             |
      | "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" | "hello world" | "hello world hello" |
      | "hello world" | "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" | "hello world hello" |
      | "hello world" | "hello world" | "hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" |

  Scenario Outline: Text fields - Max+1 (1000+1) characters in text fields are not allowed
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
    And I type <question>
    And I type <option1> for first option
    And I type <option2> for second option
    And I click first option as answer
    And I click Save
    Then Text "Too long. Should be no more than 10000 characters" appears
    Examples:
      | question                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | option1       | option2       |
      | "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wor" | "hello world" | "hello world" |
      | "1hello world" | "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wo" | "hello world" |
      | "1hello world" | "hello world" | "1hello world hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello wo" |








