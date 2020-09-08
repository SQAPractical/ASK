Feature: Showstopper Textual Question

  Scenario: Textual Question Can be Showstopper
    Given I open "login" page
    When I type email "naadiya.rasheed+sam@gmail.com"
    And I type password "sameer"
    And I click Sign in button
    Then Text "Naadiya" appears
    And I click on Quizzes
    Then Text "List of Quizzes" appears
    When I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type Title Of The Quiz "QA"
    And I click Add Question
    Then Text "Q1: new empty question" appears
    When I click Textual for "Q1"
    And I type question "Define QA" for first question
    And I click on Is Show-Stopper question for first question
    And I click on Save
    Then Text "List of Quizzes" appears
    When I click on quiz "QA"
    Then Text "Show-Stopper Question" appears
    And I click Close
    And I delete quiz "QA"

  Scenario: Textual Question Show-Stopper Can be One per Quiz

    Given I open "login" page
    When I type email "naadiya.rasheed+sam@gmail.com"
    And I type password "sameer"
    And I click Sign in button
    Then Text "Naadiya" appears
    And I click on Quizzes
    Then Text "List of Quizzes" appears
    When I click Create New Quiz button
    Then Text "Title Of The Quiz *" appears
    And I type Title Of The Quiz "QA"
    And I click Add Question
    Then Text "Q1: new empty question" appears
    When I click Textual for "Q1"
    And I type question "Define QA" for first question
    And I click on Is Show-Stopper question for first question
    And I click Add Question
    Then Text "Q2: new empty question" appears
    When I click Textual for "Q2"
    And I type question "Define Software Testing" for second question
    And I click on Is Show-Stopper question for second question
    And I click on Save
    Then Text "List of Quizzes" appears
    When I click on quiz "QA"
    Then Text "Show-Stopper Question" appears for second question
