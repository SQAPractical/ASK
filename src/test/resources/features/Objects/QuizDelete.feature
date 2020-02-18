Feature: Quiz - delete
  @Smoke
  Scenario: Quiz - delete - 1 question
    Given I open login page
    And I type email "kojixap444@allmtr.com" on login page
    And I type password "109876" on login page
    And I click Sign in button
    And I wait for 3 seconds
    Then user is redirected to home page
    And I click on Quizzes menu
    And I click on Create New Quiz button
    And type title of the quiz "Alla Tester"
    And I click on Add Question button
    And I click on Textual radio button
    And I type a question "Why regression testing is important?"
    And I click on Save button
    Then I select Alla Tester quiz
    And I click on Delete button
    Then appears "Are you sure want to DELETE whole quiz? This action cannot be undone!" message
    And I click on Delete button in the right corner


  @Smoke
  Scenario: Quiz - Delete - Delete unsaved Quiz using "Back to Quizzes list" button.
    Given I navigate to login page
    And I type email "kojixap444@allmtr.com" on login page
    And I type password "109876" on password field
    And I push sign in button
    And I select the quiz menu
    And I push Create New Quiz button
    Then I type "Alla Tester1" in title
    And push "Add Question" button
    And push "Textual" radio button.
    And I type question "Why regression testing is important?"
    When I click on Back To Quizzes List button
    Then "You have unsaved changes in your Quiz. Would you like to leave Quiz and discard changes?" message pops up
    And I choose and click on Discard button.


Scenario: :  Quiz - Delete. Teacher 2 deletes Quiz created by Teacher 1.
  Given I go to login page
  And I type "kojixap444@allmtr.com" email
  And I type "109876" password
  When I click sign in button
  And I'm waiting for 2 seconds
  And I'm selected Quizzes menu
  And I'm pushing Create New Quiz button
  And I write "Alla Tester2" title
  And I click on button Add Question
  And I push Textual radio button.
  And I type "Why smoke testing is important?"
  And Check "Is "Show-Stopper" question?"
  And I push Save Button
  When I click on Log out button
  Then message "Are you sure want to Log Out?"  appears
  And I click on button  Log Out button
  And I type "onc@hemetapartments.com" in email field
  And I type "54321" in password field
  And next I click Sign in Button
  Then I am in main page of second teacher
  And I select and click "Quizzes" option from Mane Menu
  And select quiz "Alla Tester2"
  And I submit Delete button



