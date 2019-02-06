Feature: 3.6
  @EndToEnd
  Scenario: Teacher creates Quiz with 3 Textual, 3 Single- Choice, 3 Multiple-Choice questions
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
#      // Create Quiz
    And Push Create new Quiz button
    And Type Title of the Quiz "Testing Ig"
    And Click Add Question
    And Select Textual Type of questionOne
    And Type text of QuestionFirst "Textual 1"
    And Click Add Question
    And Select Textual Type of questionTwo
    And Type text of QuestionSecond "Textual 2"
    And Click Add Question
    And Select Textual Type of questionThree
    And Type text of QuestionThird "Textual 3"
    And Click Add Question

    And Select Single-Choice Type of questionFour
    And Type text of QuestionFour "Single choice Question 1"
    And Type text in OptionsFour "Text of option 1" and "Text of option 2"
    And Select first option as correct answer questionFour
    And Click Add Question
    And Select Single-Choice Type of questionFive
    And Type text of QuestionFive "Single choice Question 2"
    And Type text in OptionsFive "Text of option 1" and "Text of option 2"
    And Select second option as correct answer questionFive
    And Click Add Question
    And Select Single-Choice Type of questionSix
    And Type text of QuestionSix "Single choice Question 3"
    And Type text in OptionsSix "Text of option 1" and "Text of option 2"
    And Select first option as correct answer questionSix
    And Click Add Question


    And Select Multiple-Choice Type of questionSeven
    And Type text of QuestionSeven "Multiple choice Question 1"
    And Type text in OptionsSeven "Multiple-choice 1" and "Multiple-choice 2"
    And Select first and second option as correct answers questionSeven
    And Click Add Question
    And Select Multiple-Choice Type of questionEight
    And Type text of QuestionEight "Multiple choice Question 2"
    And Type text in OptionsEight "Multiple-choice 1" and "Multiple-choice 2"
    And Select first and second option as correct answers questionEight
    And Click Add Question
    And Select Multiple-Choice Type of questionNine
    And Type text of QuestionNine "Multiple choice Question 1"
    And Type text in OptionsNine "Multiple-choice 1" and "Multiple-choice 2"
    And Select first and second option as correct answers questionNine

    And Push Save button
    Then Verify that quiz "Testing Ig" was created
    And Delete quiz "Testing Ig"







