@FullRegression
Feature: Submission - Status
  Scenario: Submission - Status - Failed (Auto-grade with no textual question)
    When I navigate to login page
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Auto-grade with no textual question1"
    And I click Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "Choose incorrect answer" for question 1
    And I type text "Correct Answer" for option 1 for question 1
    And I type text "Incorrect Answer" for option 2 for question 1
    And I select option 1 as correct answer for question 1
    And I click Save button
    Then Quiz "Auto-grade with no textual question1" appears in list of quizzes
    And I click on Preview button for quiz "Auto-grade with no textual question1"
    Then Options with text "Correct Answer" and "Incorrect Answer" id displayed
    And I click Close button
    And I click on "Assignments" on left menu
    And I click Create New Assignment button
    And I click on Select Quiz To Assign
    And I click on "Auto-grade with no textual question1" Quiz
    And I click on "Sophia Jones"
    And I click Give Assignment button
# these steps are not needed
#    And I click on "Submissions" on left menu
#    And I click on "Automatically Graded" on top menu
#    And I click on "Reviewed" on top menu
#    And I click on "For Grade" on top menu
#    And I click on "Quizzes" on left menu
    And I click on "Log Out" on left menu
    And I click on Log Out button
    And I type my email "student4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "My Assignments" on left menu
    And I click Go To Assignment button with "Auto-grade with no textual question1"
    And I click "Incorrect Answer" for option 2 for question 1
    And I click on Submit My Answers button
    And I click Ok button
    And I click on "My Grades" on left menu
    Then Status for quiz "Auto-grade with no textual question1" is "FAILED"
    And I click on "Log Out" on left menu
    And I click on Log Out button
    And I type my email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Submissions" on left menu
    And I click on "Automatically Graded" on top menu
    Then Status for quiz "Auto-grade with no textual question1" is "FAILED"

# these steps are not needed
#    And I click on "Reviewed" on top menu
#    And I click on "For Grade" on top menu