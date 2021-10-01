Feature: Quiz Title

  Scenario: Quiz Title - alphanumeric and special characters
    When I navigate to Login page
    And I type an email "qa.sofi@gmail.com"
    And I type teacher's password "12345"
  And I click button Sign In
    And I wait for 2 seconds
    And I click "Quizzes" on the side menu
    And I click Create New Quiz button
    And I type title of the quiz "QA124!@"
    And I click add question button
    And I select question type "Textual" for question 1
    And I type text "What is QA?"
    And I click Save button
    Then quiz "QA124!@" appears in the List of Quizzes
    And I delete my quiz "QA124!@"

    Scenario: Quiz Title - the field is required
      When I navigate to Login page
      And I type an email "qa.sofi@gmail.com"
      And I type teacher's password "12345"
      And I click button Sign In
      And I click "Quizzes" on the side menu
      And I click Create New Quiz button
      And I click Title of the quiz field
      And I click outside the Title of the quiz field
      And I wait for 3 seconds
      Then text "This field is required" appears

      Scenario: Quiz Title - minimum 1 character
        When I navigate to Login page
        And I type an email "qa.sofi@gmail.com"
        And I type teacher's password "12345"
        And I click button Sign In
        And I click "Quizzes" on the side menu
        And I click Create New Quiz button
        And I type title of the quiz "Q"
        And I click add question button
        And I select question type "Textual" for question 1
        And I type text "What is QA?"
        And I click Save button
        Then quiz "Q" appears in the List of Quizzes

        

 Scenario: Quiz Title - maximum 62 characters
  When I navigate to Login page
  And I type an email "qa.sofi@gmail.com"
  And I type teacher's password "12345"
  And I click button Sign In
  And I click "Quizzes" on the side menu
  And I click Create New Quiz button
   And I type title of the quiz "QA123!QA123!QA123!QA123!QA123!QA1QA12323!!!QA123!QA123123!QA12"
   And I wait for 2 seconds
   And I click add question button
   And I select question type "Textual" for question 1
   And I type text "What is QA?"
   And I click Save button
   Then quiz "QA123!QA123!QA123!QA123!QA123!QA1QA12323!!!QA123!QA123123!QA12" appears in the List of Quizzes
   And I delete my quiz "QA123!QA123!QA123!QA123!QA123!QA1QA12323!!!QA123!QA123123!QA12"

   Scenario: Quiz Title - Max +1
     When I navigate to Login page
     And I type an email "qa.sofi@gmail.com"
     And I type teacher's password "12345"
     And I click button Sign In
     And I click "Quizzes" on the side menu
     And I click Create New Quiz button
     And I type title of the quiz "QA123!@QA123!@QA123!@QA123!@QA123!@QA123!@QA123!@QA123!@QA123!@Q"
     And I click add question button
     And I wait for 2 seconds
     Then text "Too long. Should be no more than 62 characters" appears












