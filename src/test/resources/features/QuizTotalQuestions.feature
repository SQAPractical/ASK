Feature: Quiz Total questions
  Scenario: Quiz Total questions - Allows 3 question
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click "Sign In" button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "TestQA"
    And I click Add question button
    And I select "Textual" question type for question 1
    And I type text "What is regression?" for question 1
    And I click Add question button
    And I select "Textual" question type for question 2
    And I type text "What is regression?" for question 2
    And I click Add question button
    And I select "Textual" question type for question 3
    And I type text "What is regression?" for question 3
    And I click "Save" button
    And I click on "TestQA"
    Then Quiz "TestQA" total question numbers "3"
    And I click "Delete" button on Quizz "TestQA" table
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario: Quiz Total questions - Allows 50 questions
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click "Sign In" button
    And I click on "Quizzes" menu item
#    And I click "Create New Quiz" button
#    And I type title of quiz "TestQA 123"
##    And I click Add question button
##    And I select "Textual" question type for question 1
##    And I type text "What is regression?" for question 1
    And I add 50 questions to quiz
    And I click "Save" button
    And I click on "TestQA 123"
    Then Quiz "TestQA 123" total question numbers "50"
    And I click "Delete" button on Quizz "TestQA 123" table
    And I confirm "Delete" in "Confirmation" pop-up window




  Scenario: Quiz Total questions - Does Not Allows 51 question
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click "Sign In" button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "TestQA 432"
    And I click Add question button
    And I select "Textual" question type for question 1
    And I type text "What is regression?" for question 1
    And I add 50 questions to quiz
    And I click "Save" button
    And I click on "TestQA 432"
    Then message "Quiz can contain not more than 50 questions" appears






