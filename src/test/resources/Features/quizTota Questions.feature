Feature: Quiz - Total Questions
  Scenario: Quiz - Total Questions - Happy Path
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type Title Of The Quiz "Test001"

    Then text "This field is required" appears
