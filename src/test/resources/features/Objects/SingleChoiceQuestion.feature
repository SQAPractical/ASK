Feature: Single Choice Question- Text
  Scenario: Alphanumeric & Sp. characters
    Given I navigate to "http://ask-stage.portnov.com/#/login"
    When I type  email "baruhnazar@gmail.com"
    And I type  password "159357"
    And I click Login button
    And I click button Quizzes
    And I click button Create New Quiz
    And I type title of the quiz "Single Question - Allowable characters: Alphanumeric & Sp. characters"
    And I click Add Question button
    And I click Single choice radio-button
    And I type Question "Alphanum8eric Te$t"
    And I type Option#1 "A - Correct Answer"
    And I type Second Option "B"
    And I click Option2 radio-button
    And I click Save button


    Scenario: Single Choice Question - The field is required
      Given I navigate to "http://ask-stage.portnov.com/#/login"
      When I type  email "baruhnazar@gmail.com"
      And I type  password "159357"
      And I click Login button
      And I click button Quizzes
      And I click button Create New Quiz
      And I type title of the quiz "Single Question - Allowable characters: Alphanumeric & Sp. characters"
      And I click Add Question button
      And I click Single choice radio-button
      And I type Option#1 "A - Correct Answer"
      And I type Second Option "B"
      And I click Option2 radio-button
      And I click Save button
      Then I get error message contains "This field is required"

      Scenario: Single Choice Question - Min 1 Characters
        Given I navigate to "http://ask-stage.portnov.com/#/login"
        When I type  email "baruhnazar@gmail.com"
        And I type  password "159357"
        And I click Login button
        And I click button Quizzes
        And I click button Create New Quiz
        And I type title of the quiz "Single Question - Min 1 Characters"
        And I click Add Question button
        And I click Single choice radio-button
        And I type Question "Q"
        And I type Option#1 "A - Correct Answer"
        And I type Second Option "B"
        And I click Option2 radio-button
        And I click Save button

        Scenario: Single Choice Question - Max 1000 characters
          Given I navigate to "http://ask-stage.portnov.com/#/login"
          When I type  email "baruhnazar@gmail.com"
          And I type  password "159357"
          And I click Login button
          And I click button Quizzes
          And I click button Create New Quiz
          And I type title of the quiz "Single Question - Max 1000 characters"
          And I click Add Question button
          And I click Single choice radio-button
          And I type Question "QAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQAQA"
          And I type Option#1 "A - Correct Answer"
          And I type Second Option "B"
          And I click Option2 radio-button
          And I click Save button




