Feature: Quiz-Create

  Scenario: Quiz-Create - Verify creating Quiz by teacher
    Given I open login page
    And I type email "teacher@mailinator.com" on login page
    And I type password "12345" on login page
    And I click Sign in button
    Then I wait for Quizzes to be present
    Then I click Quizzes
    And I wait for 3 sec
    Then I click Create new quiz button
    Then I wait for Title of the quiz to be present
    And I click Title of the quiz
    And I type "Title-555" into title field
    And I click Add question button
    And I click Textual radio-button
    And I wait for Question* for be present
    And I click Question*
    And I wait for 1 sec
    And I type "question" into Question* field
    And I wait for 3 sec
    And I click Save button
    And I wait for 3 sec
    Then I wait for List of Quizzes is present
    And I click on "Title-555" quiz
    And I wait for 1 sec
    And I click on active Delete button
    And I wait for 3 sec
    And I wait for confirmation delete dialog
    And I click on confirmation delete button
    And I wait for 3 sec
    Then I verify there is no quiz with title "Title-555"
    And I log out

