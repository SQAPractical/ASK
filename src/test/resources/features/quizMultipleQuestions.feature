Feature: Quiz

  @Quiz1
  Scenario: creat new quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I click Quizzes
    And I click Quizzes
    And I click create new Quiz button
    And I type text "Test%" in the Title of Quiz
    Then I click on Add Question button
    Then I click save button
    Then Text "Quiz is not completed. Check highlighted with red areas" appears

  @Quiz2
  Scenario: creat 50 questions quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I click Quizzes
    And I click Quizzes
    And I click create new Quiz button
    And I type text "Test%" in the Title of Quiz
    Then I click on Add Question button
    And I wait for 4 sec
    Then I click Add Question button 50 times
    Then I should see "Q50: new empty question"


  @Quiz3 #known bug on error not showing
  Scenario: creat 51 questions quiz
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I click Quizzes
    And I click Quizzes
    And I click create new Quiz button
    And I type text "Test%" in the Title of Quiz
    Then I click on Add Question button
    And I wait for 4 sec
    Then I click Add Question button 51 times
    Then I should see "Q51: new empty question"





























