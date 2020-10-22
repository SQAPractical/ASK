@fullregression
Feature: quizMaxScore
  Scenario: Quiz - Maximum possible score is displayed correctly
    Given I open "login" page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click "Quizzes" menu item
    Then I click Create New Quiz button
    Then I type title "For MaxScore purpose" in Quiz name
    Then I click Add Question button
    Then I choose question type
    Then I type question "For MaxScore purpose" in the question field
    And I select "6" points per question
    Then I click Save Quiz button
    Then I click "For MaxScore purpose" quiz name
    Then I check maxScore of quiz "For MaxScore purpose"
    Then I click "Delete" button on Quiz panel
    Then I confirm "Delete"

  Scenario:  Quiz -Upgraded Maximum possible score is displayed correctly
    Given I open "login" page
    When I type email "teacher3@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click "Quizzes" menu item
    Then I click Create New Quiz button
    Then I type title "For MaxScore purpose" in Quiz name
    Then I click Add Question button
    Then I choose question type
    Then I type question "For NaxScore purpose" in the question field
    And I select "9" points per question
    Then I click Save Quiz button
    Then I click "For MaxScore purpose" quiz name
    Then I click "Edit" button on Quiz panel
    Then I click question
    And I select "3" points per question
    Then I click Save Quiz button
    Then I click "For MaxScore purpose" quiz name
    Then I check maxScore of quiz "For MaxScore purpose"
    Then I click "Delete" button on Quiz panel
    Then I confirm "Delete"

