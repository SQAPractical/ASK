@ShowStopper
Feature: single choice showstopper

  Scenario: Can be show stopper
    Given I open "login" page
    And I type email "qa.sofi@gmail.com" on login page
    And I type password "12345" on login page
    Then I click on Sign in button
    Then I should see "Sofia Teacher" header
    And I click on Quizzes button
    Then I should see "List of Quizzes" header
    And I click on Create New Quiz button
    Then I should see "Title Of The Quiz" header
    And I type "Test Quiz Single Choice Question Show-Stopper" in Title Of The Quiz input field
    Then I click on Add Question
    Then I click on Single-Choice radio button
    Then I Fill out the question form
    And I type "The main focus of acceptance testing is?" in Question name
    And I choose right answer 1
    And I type "testing for a business perspective" in Option 1
    And I type "ensuring that the system is acceptable to all users" in Option 2
    And I click on Show-Stopper question checkbox
    And I click on Preview button
    Then I should see Show-Stopper message Displayed
    And I click on Close button
    And I click on Save button
    And I click on recently created Quiz in the List of Quizzes
    And I wait for 3 seconds








