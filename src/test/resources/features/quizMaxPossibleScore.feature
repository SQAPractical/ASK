Feature: Maximum possible score

  Scenario: Maximum possible score - 2 questions
    Given I open "login" page
    When I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then Text "Samy Teacher" appears
    When I click on "quizzes" tab in menu
    And I create new quiz
    And I type Quiz Title "3yUfuwDuLmqjoPf"
    And I click Add Question
    And I choose "Textual" type for question "1"
    And I type "How are you today?" in question "1"
    And I set "9" points per question "1"
    And I click Add Question
    And I choose "Textual" type for question "2"
    And I type "What is your name?" in question "2"
    And I set "7" points per question "2"
    And I save quiz
    And I click on quiz with "3yUfuwDuLmqjoPf"
    Then I verify if maximum score is "16" in quiz with title "3yUfuwDuLmqjoPf"
    And I delete "3yUfuwDuLmqjoPf" quiz

    Scenario: Quiz - Maximum possible score - 1 question
      Given I open "login" page
      When I type email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click Sign in button
      Then Text "Samy Teacher" appears
      When I click on "quizzes" tab in menu
      And I create new quiz
      And I type Quiz Title "4zgUsivhYZ"
      And I click Add Question
      And I choose "Textual" type for question "1"
      And I type "How are you today?" in question "1"
      And I set "10" points per question "1"
      And I save quiz
      And I click on quiz with "4zgUsivhYZ"
      Then I verify if maximum score is "10" in quiz with title "4zgUsivhYZ"
      And I delete "4zgUsivhYZ" quiz
