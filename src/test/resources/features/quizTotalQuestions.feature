Feature: Quiz Total Questions
  Scenario: Quiz Total Questions - one question
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type "BBB" title of the quiz
    And I click on Add question button
    And I select "Textual" question type for question 1
    And I type text "What is QA" as a question for question 1
    And I click "Save" button
    Then Quiz "BBB" is saved in list of quizzes
    And I delete quiz "BBB"

   Scenario: Quiz Total Questions - 50 questions
     When I navigate to login page
     And I type email "teacher3@gmail.com"
     And I type password "12345Abc"
     And I click on Sign In button
     And I click on "Quizzes" on left menu
     And I click "Create New Quiz" button
     And I type "BBB" title of the quiz
     And I click on Add question button
     And I select "Textual" question type for question 1
     And I type text "What is QA" as a question for question 1
     Then I repeat the steps to add question button
     And I click "Save" button
     Then Quiz "BBB" is saved in list of quizzes
     And I delete quiz "BBB"

    Scenario: Quiz total questions - 51 questions
      When I navigate to login page
      And I type email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on "Quizzes" on left menu
      And I click "Create New Quiz" button
      And I type "BBB" title of the quiz
      And I click on Add question button
      And I select "Textual" question type for question 1
      And I type text "What is QA" as a question for question 1
      Then I repeat the steps to add questions button
      When I click "Save" button
      Then error message "Maximum number of allowed questions is 50" should be displayed
#      And I delete quiz "BBB"

     Scenario: Delete the quiz
       When I navigate to login page
       And I type email "teacher3@gmail.com"
       And I type password "12345Abc"
       And I click on Sign In button
       And I click on "Quizzes" on left menu
       And I delete quiz "BBB"
