Feature: Assignment-Quiz Name
  Scenario: Assignment - Quiz name
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "PigotskaTest" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button for question 1
    And I Type "dfgzg" as question for question 1
    And I Type "A" answer for option 1 for question 1
    And I Type "B" answer for option 2 for question 1
    And I select option 1 for question 1 as correct answer
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "PigotskaTest"
    And I click on quiz "PigotskaTest"
    And I delete quiz "PigotskaTest"




