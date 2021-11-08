Feature: Textual Question Show Stopper
  Scenario: Textual question show - stopper
    When I navigate to login page
    And I type my email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click Create New Quiz button
    And I type quiz title "Quiz for show stopper"
    And I click Add question button
    And I click on Textual radio button
    And I type "TESTaergvzdsvszv fssaf" for Question field
    And I select on Show-Stopper question
    And I click on Save button


    Scenario: Textual question show - stopper for Student account
      When I navigate to login page
      And I type my email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click Sign In button
      And I click on "Quizzes" on left menu
      And I click Create New Quiz button
      And I type quiz title "Quiz for show stopper"
      And I click Add question button
      And I click on Textual radio button
      And I type "TESTaergvzdsvszv fssaf" for Question field
      And I select on Show-Stopper question
      And I click on Save button
      And I click on "Assignments" on left menu
      And I click Create New Assignment button
      And I select student "Ivan Ivanov"
      And I click on Give Assignment button
      And I click on "log Out" button on left menu
      And I click on "Log Out" button on right side
      And I type my email "student1@gmail.com"
      And I type password "12345Abc"
      And I click Sign In button
      And I click on "My Assignments" on left menu
      And I click on "Go To Assessment" button
      Then Textual question is marked as Show-stopper