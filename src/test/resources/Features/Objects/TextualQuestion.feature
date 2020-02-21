
Feature: Textual Question
  Scenario: User can edit quiz
    Given I open login page
    Then I type email "test@mailinator.com" in login page
    And I type password "12345" in login page
    And I click Sign in button
    And I wait for 2 sec
    Then I click on Quizzes menu
    And I wait for 2 sec
    And I click Create New Quiz button
    And I wait for 2 sec
    And I type Title Of The Quiz "Title"
    And I wait for 2 sec
    And I click Add Question button
    And I wait for 2 sec
    Then I click on Textual radio button
    And I wait for 2 sec
    Then I type "What is Java?" on Question field
    And I wait for 2 sec
    And I click Save button
    And I wait for 2 sec
    Then I click on Title quiz
    And I wait for 2 sec
    And I click Edit button
    And I wait for 2 sec
    Then I type "1" on Title Of The Quiz
    And I wait for 2 sec
    And I click Save button
    And I wait for 2 sec
    Then I click on Title1 quiz
    And I wait for 2 sec
    Then I click Preview button
    And I wait for 2 sec
  Scenario: User can remove quiz title and type a new one
    Given I open login page
    Then I type email "test@mailinator.com" in login page
    And I type password "12345" in login page
    And I click Sign in button
    And I wait for 2 sec
    Then I click on Quizzes menu
    And I wait for 2 sec
    And I click Create New Quiz button
    And I wait for 2 sec
    And I type Title Of The Quiz "Title"
    And I wait for 2 sec
    And I click Add Question button
    And I wait for 2 sec
    Then I click on Textual radio button
    And I wait for 2 sec
    Then I type "What is Java?" on Question field
    And I wait for 2 sec
    And I click Save button
    And I wait for 2 sec
    Then I click on Title quiz
    And I wait for 2 sec
    And I click Edit button
    And I wait for 2 sec
    Then I delete "Title" on Title Of The Quiz
    And I wait for 2 sec
    Then I type "What is Java" on Title Of The Quiz
    And I click Save button
    And I wait for 2 sec
    Then I click on What is Java quiz
    And I wait for 2 sec
    Then I click Preview button
    And I wait for 2 sec


