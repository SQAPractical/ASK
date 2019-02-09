Feature: 3.10
  @EndToEnd_2
  Scenario: Teacher creates Quiz with 3 Textual, 3 Single- Choice, 3 Multiple-Choice question 90% passing rate.
    When  Navigate to login page
    And Type email "tanyasptest+6@gmail.com"
    And Type Password "winter2018"
    And Push Sign In button
    And Click on Quizzes on left navigational panel
#  Create Quiz
    And Push Create new Quiz button
    And Type Title of the Quiz "Quiz-3T/3S/3M-90%PR"
    And Click Add Question
    And Select Textual Type of Q1
    And Type text of Q1 "Textual 1"
    And Click Add Question
    And Select Textual Type of Q2
    And Type text of Q2 "Textual 2"
    And Click Add Question
    And Select Textual Type of Q3
    And Type text of Q3 "Textual 3"
    And Click Add Question
    And Select Single-Choice Type of Q4
    And Type text of Q4 "Single choice Question 1"
    And Type text in Options Q4 "Text of option 1" and "Text of option 2"
    And Select first option as correct answer in Q4
    And Click Add Question
    And Select Single-Choice Type of Q5
    And Type text of Q5 "Single choice Question 2"
    And Type text in Options Q5 "Text of option 1" and "Text of option 2"
    And Select first option as correct answer in Q5
    And Click Add Question
    And Select Single-Choice Type of Q6
    And Type text of Q6 "Single choice Question 3"
    And Type text in Options Q6 "Text of option 1" and "Text of option 2"
    And Select first option as correct answer in Q6
    And Click Add Question
    And Select Multiple-Choice Type of Q7
    And Type text of Q7 "Multiple-Choice Question 1"
    And Type text in Options Q7 "Text of option 1" and "Text of option 2"
    And Select first and second option as correct answer in Q7
    And Click Add Question
    And Select Multiple-Choice Type of Q8
    And Type text of Q8 "Multiple-Choice Question 2"
    And Type text in Options Q8 "Text of option 1" and "Text of option 2"
    And Select first and second option as correct answer in Q8
    And Click Add Question
    And Select Multiple-Choice Type of Q9
    And Type text of Q9 "Multiple-Choice Question 3"
    And Type text in Options Q9 "Text of option 1" and "Text of option 2"
    And Select first and second option as correct answer in Q9
    And Set Passing Rate to 90%
    And Push Save button
    Then Verify that quiz "Quiz-3T/3S/3M-90%PR" appears in the list of Quizzes with passing rate 90%
#  Delete Quiz
    And Delete created quiz "Quiz-3T/3S/3M-90%PR"