Feature: 3.11
  Scenario: Teacher create Quiz and assign it to 5 individual students
    Given I navigate to "login" page
    When I type email "0mohandlove33o@cojqh5.com" on "login" page
    And I type password "12345" on "login" page
    And I click Sign in button
    Then I verify user name "Richard Gere" is displayed
#    Create Quiz
    When I click on "Quizzes" on left menu
    When I wait for 5 sec
    When I click create new quiz button
    When I type title of the quiz "Test Quiz"
    And I click on Add question button
    When I select textual type of Question
    Then I type text of question "What is Cookies?"
    And I save the quiz
#     Create Assignment
    When I click on "Assignments" on left menu
    And click on Create New Assignment button
    Then I select quiz exactly "Test Quiz"
    Then I select student "Sophia Jones"
    Then I select student "Marina Studentka"
    Then I select student "Anu Katkar"
    Then I select student "Jon Snow"
    Then I select student "David Davidov"
    Then I click Give assignment button
    And I verify that "List of Assignments" page shown

