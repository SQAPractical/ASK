Feature: Quiz - Delete
  @Regression
    Scenario: Quiz - Teacher can delete quiz
      Given I navigate to "login" page
      When I type email "xjnrdnpathake@b4top.tk" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      Then I verify user name "Leslie Teacher" is displayed
      When I click on "Quizzes" on left menu
      Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      When I click create new quiz button
      And I type title of the quiz "Test quiz for Delete Quiz functionality - 01"
      And I click on Add question button
      And I select textual type of Question
      And I type text of question "Why do we need Bug Tracking Database?"
      And I save the quiz
      Then element with xpath "//mat-panel-title[contains(text(),'Test quiz for Delete Quiz functionality - 01')]" should be displayed
      When I scroll to the element contains text "Test quiz for Delete Quiz functionality - 01" with offset 10
      And I unfold quiz "Test quiz for Delete Quiz functionality - 01" details
      And I click Delete button in quiz details
      And I click "Delete" button in pop-up confirmation window
      Then element with xpath "//mat-panel-title[contains(text(),'Test quiz for Delete Quiz functionality - 01')]" should not be present


    Scenario: Quiz - Teacher can delete quiz created by another Teacher
      Given I navigate to "login" page
      When I type email "xjnrdnpathake@b4top.tk" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      Then I verify user name "Leslie Teacher" is displayed
      When I click on "Quizzes" on left menu
      Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      When I click create new quiz button
      And I type title of the quiz "Test quiz for Delete Quiz functionality - 01"
      And I click on Add question button
      And I select textual type of Question
      And I type text of question "Why do we need Bug Tracking Database?"
      And I save the quiz
      Then element with xpath "//mat-panel-title[contains(text(),'Test quiz for Delete Quiz functionality - 01')]" should be displayed
      When I click on "Log Out" on left menu
      And I click "Log Out" button in pop-up confirmation window
      When I type email "yaymend@movx.us" on "login" page
      And I type password "12345" on "login" page
      And I click Sign in button
      Then I verify user name "Diana Brown" is displayed
      When I click on "Quizzes" on left menu
      Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
      When I scroll to the element contains text "Test quiz for Delete Quiz functionality - 01" with offset 10
      And I unfold quiz "Test quiz for Delete Quiz functionality - 01" details
      And I click Delete button in quiz details
      And I click "Delete" button in pop-up confirmation window
      Then element with xpath "//mat-panel-title[contains(text(),'Test quiz for Delete Quiz functionality - 01')]" should not be present