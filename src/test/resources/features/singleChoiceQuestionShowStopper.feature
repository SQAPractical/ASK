Feature: Single choice Question show stopper

  Scenario: single choice question-teacher can select as show stopper
    Given I open "Login" page
    Then I type email "qa.sofi@gmail.com"
    Then I type password "12345"
    And I click Sign in button
    Then Text "MyNew Name" appears
    When I click on Quizzes
    Then Text "List of Quizzes" appears
    When I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type title of the quiz "Mathematics"
    When I click on Add Question
    Then Text "Q1: new empty question" appears
    When I click Single-Choice
    Then Text "Question *" appears
    When I type question "What is Polynominal?"
    When I type optiona "an expression of more than two algebraic terms, especially the sum of several terms that contain different powers of the same variable(s)."
    When I type optionb "ts an Exponent"
    And I click on option1 radio button
    Then I click on Is "Show-Stopper" question?
    Then I click save button
    Then Text "List of Quizzes" appears
    Then I click on quiz "Mathematics"
    Then Text "Show-Stopper" appears
    Then I click close
    And I delete quiz "Mathematics"


  Scenario: single choice question-show stopper-student can see it as a show stopper in his assigment
    Given I open "Login" page
    Then I type email "qa.sofi@gmail.com"
    Then I type password "12345"
    And I click Sign in button
    Then Text "MyNew Name" appears
    When I click on Quizzes
    Then Text "List of Quizzes" appears
    When I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type title of the quiz "Mathematics"
    When I click on Add Question
    Then Text "Q1: new empty question" appears
    When I click Single-Choice
    Then Text "Question *" appears
    When I type question "What is Polynominal?"
    When I type optiona "an expression of more than two algebraic terms, especially the sum of several terms that contain different powers of the same variable(s)."
    When I type optionb "ts an Exponent"
    And I click on option1 radio button
    Then I click on Is "Show-Stopper" question?
    Then I click save button
    When I click Assignments
    Then Text "List of Assignments" appears
    When I click Create New Assignment button
    And I click on John Nadela
    And I click Select Quiz To Assign
    When I click on quiztitle "Mathematics"
    Then I click Give Assignment
    Then I Log Out
    Then I type email "mpusegaonkar+test@gmail.com"
    Then I type password "test100"
    And I click Sign in button
    Then Text "John Nadela" appears
    When I click My Assignments
    Then Text "My Assignments" appears
    Then I click on Go To Assessment button
    Then Text "Show-Stopper Question" appears













