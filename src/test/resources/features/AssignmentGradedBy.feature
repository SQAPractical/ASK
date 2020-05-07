@Regression
Feature: AssignmentGradedBy

  Scenario Outline: Teacher crate and assign the quiz
########################################### log in ######################################################
    Given I open login page
    When I type email <email>
    And I type password <pass>
    Then I click Sign in button
########################################### Creates Quiz ################################################
    When I click on Quizzes
    Then I click Create New Quiz
    And I wait 2 seconds
    When I type <QuizName>
    Then I click Add Question button
    Then I click on Textual radio button
    Then I type <Question> in to the Question text field
    Then I click on Save button
    And I wait 2 seconds
########################################### Creates assignment ###########################################
    When I click on Assignments
    And  I create new assignment
    Then I click on Select Quiz To Assign drop down
    And I select quiz named <QuizName>
    Then I click on <Student Name>
    Then I click on Give Assignment button

    Examples:
      | email                 | pass    | QuizName    | Question    |Student Name |
      | "felocipto@gmail.com" | "12345" | "!Textual!" | "!Textual!" |"Student Kate" |


##########################################################################################################

  Scenario Outline: Student submits finished quiz
    Given I open login page
    Then I type email <email>
    And I type password <pass>
    And I click Sign in button
    And I wait 2 seconds
    When I click on My Assignments
    And I click on Go to Assignment button <QuizName>
    When I type answer "asdasd"
    Then I click on Submit My Answers button
    Then I click ok
    Then I click on My Grades from left menu
    Then I verify finished quiz is present in the list <QuizName>
    And I verify that quiz status is "PENDING"
    Examples:
      | email            | pass       |QuizName    |
      | "katzem@mail.ru" |"student123"|"!Textual!" |

##########################################################################################################

  Scenario Outline: Teacher grades quiz "PASSED"
    Given I open login page
    Then I type email <email>
    Then I type password <pass>
    And I click Sign in button
    Then I click on Submissions from left menu
    Then I verify that submission is presented <StudentName>
    And I click Grade button
    Then I click + button
    Then I click + button
    Then I click + button
    And I click save button
    Examples:
      | email               | pass   | StudentName   |
      |"felocipto@gmail.com"| "12345"| "Student Kate"|

##########################################################################################################

  Scenario Outline: Teacher grades quiz "FAILED"
    Given I open login page
    Then I type email <email>
    Then I type password <pass>
    And I click Sign in button
    Then I click on Submissions from left menu
    Then I verify that submission is presented "Student Kate"
    And I click Grade button
    Then I click + button
    And I click save button
    Examples:
      | email               | pass   |
      |"felocipto@gmail.com"| "12345"|

##########################################################################################################

 Scenario Outline: Student verify that assignment is graded 
   Given I open login page
   Then I type email <email>
   Then I type password <pass>
   And I click Sign in button
   And I wait 2 seconds
   Then I click on My Grades from left menu
   Then I verify finished quiz is present in the list <QuizName>
   And I verify that quiz status is "PASSED"

   Examples:
     | email            | pass       | QuizName   | Status  |
     | "katzem@mail.ru" |"student123"|"!Textual!" |"PASSED" |
#     |                  |            |            |"FAILED" |

##########################################################################################################