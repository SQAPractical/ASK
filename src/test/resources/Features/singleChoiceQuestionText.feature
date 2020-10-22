@fullregression
Feature: Single Choice Question Text field
  Scenario: Text field with Alphanumeric & Special Characters
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    And I click Quizzes from the left Menu
    And I click Create New Question
    And I type "Test 0.1" in the Title of the Quiz
    And I click Add Question
    And Select Single Choice type of Question
    And I type "What is the remainder of 5 multiply(*)by 5?" in the Question field
    And In the first field of option type "5"
    And In the second field of option type "25"
    And I click on the Add option
    And In the third field of option type "0"
    And I choose the second option as a correct answer
    And I click Save button
    And I click "Test 0.1" quiz name
    And I click on preview button for quiz "Test 0.1"
    Then Text "What is the remainder of 5 multiply(*)by 5?" appears
    And I click on close button
    And I click button "Delete" on Quiz "Test 0.1"
    And Click button Delete to Confirm my action

  Scenario: Text field is required
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    Then I click Sign in button
    Then I click Quizzes from the left Menu
    And I click Create New Question
    Then I type "Test 0.1" in the Title of the Quiz
    And I click Add Question
    Then Select Single Choice type of Question
    And I click on the field Question and leave it empty
    And In the first field of option type "5"
    And In the second field of option type "25"
    And I click Save button
    Then Text "This field is required" should appears

  Scenario: Text field with 1 Character
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    Then I click Sign in button
    Then I click Quizzes from the left Menu
    And I click Create New Question
    Then I type "Test 0.1" in the Title of the Quiz
    And I click Add Question
    Then Select Single Choice type of Question
    When I type "E" in the Question field
    Then In the first field of option type "a"
    And In the second field of option type "b"
    Then I choose the second option as a correct answer
    And I click Save button
    Then I click "Test 0.1" quiz name
    And I click button "Delete" on Quiz "Test 0.1"
    And Click button Delete to Confirm my action

  Scenario: Text field with 1000 Character
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    Then I click Sign in button
    Then I click Quizzes from the left Menu
    And I click Create New Question
    Then I type "Test1980" in the Title of the Quiz
    And I click Add Question
    Then Select Single Choice type of Question
    When I type "qwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqqwertyuiopqwertyuiopqwertyuiopqwertyuioqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiop" in the Question field
    Then In the first field of option type "a"
    And In the second field of option type "b"
    Then I choose the first option as a correct answer
    And I click Save button
    Then I click "Test1980" quiz name
    And I click button "Delete" on Quiz "Test1980"
    And Click button Delete to Confirm my action

  Scenario: Text field with 1001 Character
    Given I open "Login" page
    When I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    Then I click Sign in button
    Then I click Quizzes from the left Menu
    And I click Create New Question
    Then I type "Test1980" in the Title of the Quiz
    And I click Add Question
    Then Select Single Choice type of Question
    When I type "qwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopfqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqqwertyuiopqwertyuiopqwertyuiopqwertyuioqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiopqwertyuiop" in the Question field
    Then In the first field of option type "a"
    And In the second field of option type "b"
    Then I click on the Add option
    And In the third field of option type "c"
    Then I choose the first option as a correct answer
    And I click Save button
    Then Text "Error about max 1000 characters" should appears