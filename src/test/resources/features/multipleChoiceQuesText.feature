@MultipleChoiceQuestiontext
  Feature: Multiple Choice Question-Text

    Background:
      Given I goto login page
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      And I wait for 2 sec
      Then text "Sofia Teacher" appears
      And I click "Quizzes"
      And I wait for 3 sec
      And I click "Create New Quiz"
      And I wait for 2 sec
      And I type title of quiz "Math1"
      And I click "Add Question"
      And I click "Multiple Choice"

    @MultipleChoiceQuestionText1
    Scenario: Alphanumeric and special char allowed in question text area
      And I type question "whats Test123!@#$ ? "
      And I type option as "A" and "B"
      And I select correct answer
      And I click "Save"


    @MultipleChoiceQuestionText2
    Scenario: Field is required
      And I click "Save"
      Then text "This field is required" appears

    @MultipleChoiceQuestionText3
    Scenario: Minimum 1 character allowed in question-text
      And I type question with 1 characters
      And I type option as "A" and "B"
      And I select correct answer
      And I click "Save"

    @MultipleChoiceQuestionText4
    Scenario: maximum 1000 characters allowed in question-text
      And I type question with 1000 characters
      And I type option as "A" and "B"
      And I select correct answer
      And I click "Save"

    @MultipleChoiceQuestionText5
    Scenario: More than 1000 characters not allowed in question-text
      And I type question with 1001 characters
      And I type option as "A" and "B"
      And I select correct answer
      And I click "Save"
      Then text "maximum 1000 characters allowed" appears
# LAST TEST5 IS FAILING BECAUSE ITS A BUG IN THE APPLICATION ,
# no error message is displayed for more than 1000 characters in question text field
