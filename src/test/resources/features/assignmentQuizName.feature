@assignmentQuizName
  Feature: Assignment Quiz Name

    @assignmentQuizName1
      Scenario: [teacher] To create quiz,assign,verify(in both account),then edit quiz, verify(in both account), delete the quiz

      Given I goto login page
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      Then text "Sofia Teacher" appears

      When I click "Quizzes"
      And I click "Create New Quiz"
      And I type title of quiz "SQA Quiz2"
      And I click "Add Question"
      And I click "textual"
      And I type question "whats SQA ? "
      Then I click "Save"

      When I click "Assignments"
      Then I click "Create new assignment"
      And I click "Select Quiz to Assign"
      And I choose "SQA Quiz2"
      And I choose Student "Emma Emma"
      Then I click "Give assignment"

#    TO VERIFY TEACHER can see Quiz name in "List of assignments"
      When I click "Assignments"
      Then I verify quiz name "SQA Quiz2" in list of assignments with student "Emma Emma"

#    TO VERIFY STUDENT  can see Quiz name in "My Assignments"
      When I logout with confirm message
      Then I type email "test4@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      Then text "Emma Emma" appears
      When I click "My assignments"
      Then I verify quiz name "SQA Quiz2" in list of assignments

#      TO GO BACK TO TEACHER ACCOUNT AND EDIT THE QUIZ NAME
      When I logout with confirm message
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      Then text "Sofia Teacher" appears

      When I click "quizzes"
      And I edit quiz with title "SQA Quiz2" to "New Quiz2"
      And I click "save"
      Then I verify quiz name "New Quiz2" in list of quizzes
      Then I click "close"

#     TO VERIFY IN STUDENT ACCOUNT THAT QUIZ NAME IS STILL SAME
      When I logout with confirm message
      Then I type email "test4@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      Then text "Emma Emma" appears
      When I click "My assignments"
      Then I verify quiz name "SQA Quiz2" in list of assignments

#      TO GO BACK TO TEACHER ACCOUNT and delete the quiz
      When I logout with confirm message
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click "Sign In"
      Then text "Sofia Teacher" appears
      When I click "Quizzes"
      Then I delete quiz with title "New Quiz2"

