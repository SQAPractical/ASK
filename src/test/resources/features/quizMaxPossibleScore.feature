Feature: Maximum possible score
  Scenario: Maximum possible score - 2 questions
    Given I open "login" page
    When I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then Text "Samy Teacher" appears
    When I click on "quizzes" tab in menu
    And I create new quiz
    And I type Quiz Title "123456"
    And I click Add Question
    And I choose "Textual" type for question "1"
    And I type "How are you today?" in question "1"
    And I set "9" points per question "1"
    And I click Add Question
    And I choose "Textual" type for question "2"
    And I type "What is your name?" in question "2"
    And I set "7" points per question "2"
    And I save quiz
    And I wait 3 sec
    And I click on quiz with "123456"
    Then I verify if maximum score is "16" in quiz with title "123456"

    Scenario: Quiz - Maximum possible score - 1 question
      Given I open "login" page
      When I type email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click Sign in button
      Then Text "Samy Teacher" appears
      When I click on "quizzes" tab in menu
      And I create new quiz
      And I type Quiz Title "1234567"
      And I click Add Question
      And I choose "Textual" type for question "1"
      And I type "How are you today?" in question "1"
      And I set "10" points per question "1"
      And I save quiz
      And I wait 3 sec
      And I click on quiz with "1234567"
      Then I verify if maximum score is "10" in quiz with title "1234567"