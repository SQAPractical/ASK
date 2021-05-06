Feature: Assignment - Graded by
  Scenario: Assignment - Graded by - Nobody
    When I navigate to login page
    And I type Email "7imad.2324q@convoith.com"
    And I type Password "Ira12345q"
    And I click sign-in button
    Then Text "Iryna Bakumenko" appears
    And I click on Quizzes in the main menu
    And I click on Create New Quiz button
    And I type "***First quiz" in the title of the quiz
    And I click on Add Question button
    And I choose Question type Single-Choice
    And I fill out "Question first" in the Question field
    And I choose Option first
    And I fill out "Correct" in the Option first field
    And I fill out "Not correct" in the Option second field
    And I click on button Save
    And I click on Assignments in the main menu
    And I click Create New Assignment on button
    And I click on group filter
    And I choose student from the list
    And I Select created "***First quiz" quiz to assign
    And I click on give Assignment button
    And I click on Dropdown icon from the right in the List of Assignments
    And I verify if a quiz can be graded by nobody "-" when assignment is not submitted


