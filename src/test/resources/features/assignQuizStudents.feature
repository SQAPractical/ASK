Feature: 2.5 Teacher creates Quiz and assign it for 5 individual students

Scenario: Teacher creates Quiz and assign it for 5 individual students

    Given I open login page
    Then I type email "fatitest311+t2@gmail.com"
    Then I type password "12345"
    Then I click Sign in button
    Then I click on "Quizzes" button
    Then I click on "Create New Quiz" button
    Then I type "*Task for 5 individual students" in the Title of the Quiz field
    Then I click on Add Question button
    Then I click on "Textual" button
    Then I type "Describe your framework" field
    Then I click on "Save" button
    Then text "*Task for 5 individual students" appears
    Then I click on "Assignments" button
    Then I click on "Create New Assignment" button
    Then I maximize window
    Then I Select Quiz To Assign "*Task for 5 individual students"
    Then I select Group Filter "F001"
    Then I select first 5 students
    Then I click on Give Assignment button
    And Assignment appears for 5 students with title of Quiz "Task for 5 individual students"





