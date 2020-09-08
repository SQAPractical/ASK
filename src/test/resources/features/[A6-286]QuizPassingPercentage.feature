Feature:Quiz - Passing Percentage

  Scenario: Shows correct passing percentage for the quiz
    Given I open "login" page
    When I type email "artiswaminathan+teach@gmail.com"
    And I type password "welcome1"
    And I click Sign in button
    Then Text "Quizzes" appears
    Then I click on Quizzes
    Then Text "Create New Quiz" appears
    When I click on Create New Quiz button
    Then Text "Back To Quizzes List" appears
    Then I type "GK Quiz Automation"
    Then I click on Add question
    Then I click on "Single-choice" radio button
    Then I type  question "Which is the largest continent?"
    Then I type first option "Africa"
    Then I type second option "Asia"
    Then I choose the correct option
    Then I Set the passing rate.
    And I click on save button.
    And I check "GK Quiz Automation" is displayed
    And I click on "Gk Quiz Automation"
    Then Passing percentage is displayed


