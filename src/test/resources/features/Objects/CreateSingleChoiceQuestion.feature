Feature: Create Single-Choice Question

  Scenario: Create Quiz
    Given I open my login page
    When I type my email "larisa.baishenko@gmail.com"
    And I type my password "1234567"
    And I click button "Sign in"
    And I wait here for 2 seconds
    And I use button "Quizzes"
#    And I get page Quizzes "http://ask-stage.portnov.com/#/quizzes"
    And I wait on page 2 seconds
    Then I click on button "Create New Quiz"
    And I wait on page 2 seconds
#    Then I wait for page "http://ask-stage.portnov.com/#/quiz-builder"
    And type "qwert" into "Title Of The Quiz"
    Then I use button which contains "Add Question"
    And I wait on page 2 seconds
    Then I click radio-button "Single-Choice"
    And type text"qwertyuio sdfg" into "Question Required Field"
    And I stay on page 2 seconds
    Then I check radio-button with "Option 1"
    And I type text "asdf"
    Then I click "Option 2" radio-button
    And I type text "wertyu" in "Option 2"
    Then I hit "Save" button
    Then I get back on page "Quizzes"













