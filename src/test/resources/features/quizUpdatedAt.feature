Feature: Quiz Updated At shows updated date and time

  Scenario: quiz updated at
    Given I open "login" page
    When I type email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then I click on element Quizzes
    And I click on element Create New Quiz
    Then I type "Geography Test 3" in Title of the quiz
    And I click on Add Question button
    And choose single choice question type
    And I type question "What is the capital of Canada"
    Then I type "Vancuver" in Option one
    And I type "Toronto" on Option two
    Then I choose option two as correct answer
    And I click on Save
    Then compare Created and Updated date and time

  Scenario: Quiz edition and time comparison
    Given I open "login" page
    When I type email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then I click on element Quizzes
    And I find saved quiz
    And I click on element Edit
    Then I click on element Add Question
    And I select Textual radio button
    Then I type question two: "Define plataeu"
    And I click on Save
    And I find saved quiz
    Then compare updated time with created

  Scenario: I delete quizz
    Given I open "login" page
    When I type email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then I click on element Quizzes
    And I delete Quiz "Geography Test 3"