Feature: Quiz total questions
  Scenario: Quiz - Total Questions - max 50
    Given I open "login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button

    And I click on Quizzes
    And I click on Create New Quiz button
    And I type title of quiz "XYZ"
    And I add 50 questions to quiz
    And I click on save button
    Then List of Quizzes page appears
    Then text "XYZ" appears
    And I click on "XYZ" quiz
    And I delete "XYZ" quiz

  Scenario: Quiz - Total Questions - max (50+1)
    Given I open "login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And I click on Quizzes
    And I click on Create New Quiz button
    And I type title of quiz "XYZ"
    And I add 50 questions to quiz
    And I click on save button
    Then text "Error Message" appears

