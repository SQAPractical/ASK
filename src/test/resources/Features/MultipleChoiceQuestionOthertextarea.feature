Feature: Multiple Choice Question - Other text area
  Scenario: AC29-196 - Verify if user (TEACHER) can add Other text area to a Multiple Choice Question
    When I open "login" page
    And type email "qa.sofi@gmail.com"
    And type password "12345"
    And Click "Sign In" button
    And Select  "Quizzes" menu item from side menu
    And Select  "Quizzes" menu item from side menu
    And Click "Create New Quiz" button
    And Fill out title of the Quiz "Multiple-choice question Quiz"
    And Click "Add Question" button
    And Select "Multiple-Choice" radio button
    And Fill "Question" text field "Multiple-choice question"
    And Fill "Option1" text field "First Option"
    And Fill "Option2" text field "Second Option"
    And Check "Option1" checkbox
    And Check "Include Other" checkbox
    And Click "Save" button
    And Select "Multiple-choices question Quiz" from the list
    And Click "Preview" button
    Then "Preview mode" dialog window appears, "Other" text field is present






