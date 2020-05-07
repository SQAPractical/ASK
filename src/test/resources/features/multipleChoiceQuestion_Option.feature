Feature: Multiple Choice Question_Option
  Scenario: User can create multiple choice quiz successfully with 1000 characters
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    Then I wait some minutes
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type text "Nhung Question" in the "Title Of The Quiz *" field
    And I click on Add Question button
    Then I wait some minutes
    When In "Q1", I select "Multiple-Choice" type
    Then I wait some minutes
    When In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    Then I wait some minutes
    When In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And In "Q1", I check on "text area option for this question"
    And I click on Add Question button
    Then I wait some minutes
    And In "Q2", I select "Textual" type
    Then I wait some minutes
    When In "Q2", I type "Question 2" in "Question *" field
    And I click on "Save" button
    Then I wait some minutes
    Then "Nhung Question" will be displayed at List of Quizzes page
    When I click on "Nhung Question" that I have just created
    And I click on "Delete" button of "Nhung Question" question
    And "Confirmation" popup appears
    Then I wait some minutes
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    Then "Nhung Question" is deleted succesfully

  Scenario: User can create multiple choice quiz successfully with 1001 characters
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Question 2" in the "Title Of The Quiz *" field
    And I click on Add Question button
    And In "Q1", I select "Multiple-Choice" type
    And In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    And In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And I click on "Save" button
    Then message "Cannot more than 1000 characters" will be appeared

  Scenario: User can create multiple choice quiz successfully with 15 Options
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Question 3" in the "Title Of The Quiz *" field
    And I click on Add Question button
    And In "Q1", I select "Multiple-Choice" type
    Then I wait some minutes
    When In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "Quizz 1" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    And In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And In "Q1", I add more 13 options
    And I click on Add Question button
    Then I wait some minutes
    And In "Q2", I select "Textual" type
    And In "Q2", I type "Question 2" in "Question *" field
    And I click on "Save" button
    Then I wait some minutes
    Then "Nhung Question 3" will be displayed at List of Quizzes page
    When I click on "Nhung Question 3" that I have just created
    And I click on "Delete" button of "Nhung Question 3" question
    And "Confirmation" popup appears
    Then I wait some minutes
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    Then "Nhung Question 3" is deleted succesfully

  Scenario: User can not create multiple choice quiz successfully with 16 Options
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    Then I wait some minutes
    When I type "Nhung Question 4" in the "Title Of The Quiz *" field
    And I click on Add Question button
    And In "Q1", I select "Multiple-Choice" type
    And In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "Quizz 1" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    And In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And In "Q1", I add more 14 options
    And I click on "Save" button
    Then I wait some minutes
    Then message "Cannot create more than 15 options" will be appeared

  Scenario: Multiple choice questions - Graded automatically
    Given I open login page
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    And I click on "Create New Quiz" button
    Then I wait some minutes
#    Create quiz
    When I type "Nhung Q" in the "Title Of The Quiz *" field
    And I click on Add Question button
    Then I wait some minutes
    And In "Q1", I select "Multiple-Choice" type
    And In "Q1", I type "Question 1" in "Question *" field
    And In "Q1", I type "Quizz 1" in "Option 1*" field
    And In "Q1", I type "Quizz 2" in "Option 2*" field
    And I click on "Add Option" button at "Q1" question
    And In "Q1", I type "Quizz 3" in "Option 3*" field
    And In "Q1", I check on "Option 1*" is correct answer
    And In "Q1", I check on "Option 2*" is correct answer
    And I click on "Save" button
    Then I wait some minutes

#    Assign quizz to student

    Then "Nhung Q" will be displayed at List of Quizzes page
    When I click on "Assignments" on the left menu
    And I click on "Create New Assignment" button
    And I click on "Select Quiz To Assign" dropdown list
    Then I wait some minutes
    Then I wait some minutes
    When I select "Nhung Q" quizz
    Then I wait some minutes
    And I select "student vctv1012" student
    Then I wait some minutes
    Then I wait some minutes
    And I click on "Give Assignment" button at Assignments page
    Then I wait some minutes
    Then I wait some minutes
    When I click on Log Out button
    Then I wait some minutes

#    Login with student account

    When I type email "vctv1012@gmail.com"
    And I type password "123456789"
    And I click on "Sign In" button
    Then I wait some minutes

##    Submit assignment

    When I click on "My Assignments" on the left menu
    Then I wait some minutes
    When I click on "Go To Assessment" button of quiz "Nhung Q"
    Then I wait some minutes
    When I check on "Quizz 1" is my correct answer
    And I check on "Quizz 2" is my correct answer
    And I click on "Submit My Answers" button
    Then I wait some minutes
    Then "Success" popup appears after click Submit answer
    When I click on "Ok" on "Success" popup
    And I click on Log Out button
    Then I wait some minutes

#    Check grade automaticlly

    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click on "Sign In" button
    Then I wait some minutes
    When I click on "Submissions" on the left menu
    Then I wait some minutes
    And I click on "Automatically Graded" tab
    Then I wait some minutes
    Then  "student vctv1012" student with "Nhung Q" question is displayed at Automatically Graded
    When I click on Review button at Automatically Graded
    Then I wait some minutes
    When I click on "Save" button
    
#    Delete Quetion
    Then I wait some minutes
    Then I wait some minutes
    When I click on "Quizzes" on the left menu
    Then I wait some minutes
    When I click on "Nhung Q" that I have just created
    And I click on "Delete" button of "Nhung Q" question
    And "Confirmation" popup appears
    Then I wait some minutes
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    Then "Nhung Q" is deleted succesfully
    















