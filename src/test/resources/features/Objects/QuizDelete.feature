Feature: Quiz - delete

  Scenario: Quiz - delete - 1 question
    Given I open login page
    And I type email "kojixap444@allmtr.com" on login page
    And I type password "109876" on login page
    And I click Sign in button
    And I wait for 3 seconds
    Then user is redirected to home page
    And I click on Quizzes menu
    And I click on Create New Quiz button
    And type title of the quiz "Alla Tester"
    And I click on Add Question button
    And I click on Textual radio button
    And I type a question "Why regression testing is important?"
    And I click on Save button
    Then I select Alla Tester quiz
    And I click on Delete button
    Then appears "Are you sure want to DELETE whole quiz? This action cannot be undone!" message
    And I click on Delete button in the right corner

Feature: Quiz - delete

  Scenario: Quiz - Delete - Delete unsaved Quiz using "Back to Quizzes list" button.
    Given I open login page