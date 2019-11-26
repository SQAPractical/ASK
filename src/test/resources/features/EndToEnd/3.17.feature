@End-to-end
  Feature: 3.17
    Scenario: Teacher creates Quiz with textual questions and assigns it to single student. Student completes Quiz and teacher reviews it. Student can see status of Quiz
      Given I navigate to "login" page
      When I type email "xjnrdnpathake@b4top.tk" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
    # Create Quiz with textual question
      When I click on "Quizzes" on left menu
      When I click create new quiz button
      When I type title of the quiz "Astro"
      And I click on Add question button
      When I select textual type of Question
      Then I type text of question "Why space?"
      And I save the quiz
#     Create Assignment
      When I click on "Assignments" on left menu
      And click on Create New Assignment button
      Then I select quiz "Astro"
      Then I select student "Garryk Potteryan"
      Then I click Give assignment button
      When I click Log out
      And I confirm Log Out
    # Login as a student and complete Quiz which was assigned
      When I type email "uelbabromeo4@rfm-analysis.com" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      When I click on My Assignments
      And I click on Go To Assessment
      And I type text of answer "Asd Fgh Jkl"
      And I click Submit My Answers
      And I click OK button
      When I click Log out
      And I confirm Log Out
     #  Login as a teacher and review Quiz which was submitted
      When I type email "xjnrdnpathake@b4top.tk" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      When I click on Submissions
      And I click Grade button
      # When I type "Good" in Teacher Summary field
      And I click Save button
      When I click Log out
      And I confirm Log Out
    # Login as a student to see status of Quiz
      When I type email "uelbabromeo4@rfm-analysis.com" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      When I click on My Grades button
      Then Page My Grades with Status of Quizzes appears