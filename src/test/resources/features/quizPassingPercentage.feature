Feature:Quiz - Passing Percentage

  Scenario: Shows correct passing percentage for the quiz
    Given I open "login" page
    When I type email "artiswaminathan+teach@gmail.com"
    And I type password "welcome1"
    And I click Sign in button
    Then Text "Quizzes" appears
    And I click on Quizzes
#    Then Text "Create New Quiz" appears
    And I click on Create New Quiz button
    Then Text "Back To Quizzes List" appears
    And I type title of the quiz "GK Quiz Automation"
    And I click on Add question
    And I click on "Single-choice" radio button
    And I type  question "Which is the largest continent?"
    And I type first option "Africa"
    And I type second option "Asia"
    And I select option2 as a correct answer in Question checkbox
#    Then I choose the correct option
    And I Set the passing rate.
    And I click on save button.
    Then I check if the quiz "GK Quiz Automation" is created
#    And I check "GK Quiz Automation" is displayed
    And I click on quiz "GK Quiz Automation"
    Then Passing percentage "50" is displayed for quiz "GK Quiz Automation"


