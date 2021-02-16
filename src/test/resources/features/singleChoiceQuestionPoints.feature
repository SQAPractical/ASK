Feature: Single Choice Question - Points

  Scenario: Single Choice Question - Points - Maximum Points
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    When I click on Quizzes button
    Then "quizzes" page loaded
    When I click on Create New Quiz button
    Then "quiz-builder" page loaded
    When I type "Try Test" title on Create New Quiz page
    And I click on Add Question button
    Then question editor shows
    When I click on Single-Choice radio button
    Then question options shows
    When I type "What is the maximum point value?" question on Create New Quiz page
    And I type 7 first option
    And I type 10 second option
    And I click on second option radio button
    And I set slider 10
    And I click on Save button on Create New Quiz page
    Then "quizzes" page loaded
    And "Try Test" quiz created
    When I click on created quiz
    Then "10" score set on Quizzes page

  Scenario: Single Choice Question - Points - Minimum Points
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    When I click on Quizzes button
    Then "quizzes" page loaded
    When I click on Create New Quiz button
    Then "quiz-builder" page loaded
    When I type "Try Test" title on Create New Quiz page
    And I click on Add Question button
    Then question editor shows
    When I click on Single-Choice radio button
    Then question options shows
    When I type "What is the maximum point value?" question on Create New Quiz page
    And I type 7 first option
    And I type 10 second option
    And I click on second option radio button
    And I set slider 1
    And I click on Save button on Create New Quiz page
    Then "quizzes" page loaded
    And "Try Test" quiz created
    When I click on created quiz
    Then "1" score set on Quizzes page

  Scenario: Single Choice Question - Points - 7 Points
    Given I navigate to login page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    When I click on Quizzes button
    Then "quizzes" page loaded
    When I click on Create New Quiz button
    Then "quiz-builder" page loaded
    When I type "Try Test" title on Create New Quiz page
    And I click on Add Question button
    Then question editor shows
    When I click on Single-Choice radio button
    Then question options shows
    When I type "What is the maximum point value?" question on Create New Quiz page
    And I type 7 first option
    And I type 10 second option
    And I click on second option radio button
    And I set slider 7
    And I click on Save button on Create New Quiz page
    Then "quizzes" page loaded
    And "Try Test" quiz created
    When I click on created quiz
    Then "7" score set on Quizzes page