Feature: Test submission status
"""
  Test Set for testing the submission status.
  Jira URL: https://jira.portnov.com/browse/AC12-237
  Using existing framework as it's good form to conform
  to the organization's standards and practices.
  But most implementations will be in their own class file,
  written from scratch.
"""

  Background: Set up testing environment - Teacher login
    When I navigate to login page
    And I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I click on "Assignments" on left menu

  @AC12-533 @AutomaticGradePassed @AC12-275 @AC12-285
  Scenario: Quiz automatically passed if there is no textual question and passing points are enough
    """
    We're using quiz: Great Manatee Quiz NoTextual
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-275: Great Manatee Quiz NoTextual" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-275: Great Manatee Quiz NoTextual"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-275: Great Manatee Quiz NoTextual"
    Then I verify that question #1 is "SINGLE_CHOICE"
    And I select choice #3 for question 1
    Then I verify that question #2 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 2
      | 1 | 3 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "Details" button to be clickable
    Then I confirm quiz "AC12-275: Great Manatee Quiz NoTextual" is graded "Automatic" and is "PASSED"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "Automatically Graded" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-275: Great Manatee Quiz NoTextual" as "PASSED" by "Joel Blows" with Auto-score "11 of 11"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-275: Great Manatee Quiz NoTextual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @AC12-533 @AutomaticGradePassed @AC12-277 @AC12-286
  Scenario: Quiz automatically failed if there is no textual question and passing points are not enough
    """
    We're using quiz: Great Manatee Quiz NoTextual
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-275: Great Manatee Quiz NoTextual" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-275: Great Manatee Quiz NoTextual"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-275: Great Manatee Quiz NoTextual"
    Then I verify that question #1 is "SINGLE_CHOICE"
    And I select choice #1 for question 1
    Then I verify that question #2 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 2
      | 2 | 4 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "Details" button to be clickable
    Then I confirm quiz "AC12-275: Great Manatee Quiz NoTextual" is graded "Automatic" and is "FAILED"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "Automatically Graded" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-275: Great Manatee Quiz NoTextual" as "FAILED" by "Joel Blows" with Auto-score "0 of 11"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-275: Great Manatee Quiz NoTextual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @AC12-533 @AutomaticGradePending @AC12-278
  Scenario: Quiz with textual question automatically has status Pending Review after execution
  """
    We're using quiz: Great Manatee Quiz Textual
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-278: Great Manatee Quiz Textual" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-278: Great Manatee Quiz Textual"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-278: Great Manatee Quiz Textual"
    Then I verify that question #1 is "TEXTUAL"
    And I fill the answer "Oh, behave!" for question 1
    Then I verify that question #2 is "SINGLE_CHOICE"
    And I select choice #2 for question 2
    Then I verify that question #3 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 3
      | 1 | 3 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "My Grades" card to appear
    Then I confirm quiz "AC12-278: Great Manatee Quiz Textual" is graded "Automatic" and is "PENDING"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "For Grade" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-278: Great Manatee Quiz Textual" by "Joel Blows" with Auto-score "13 of 18"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-278: Great Manatee Quiz Textual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @AC12-533 @AutomaticGradePending @AC12-279
  Scenario: If Quiz has textual question with Showstopper, auto-grade system grades: Pending Review
  """
    We're using quiz: Great Manatee Quiz NoTextual Showstopper
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-279: Great Manatee Quiz Textual Showstopper" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-279: Great Manatee Quiz Textual Showstopper"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-279: Great Manatee Quiz Textual Showstopper"
    Then I verify that question #1 is "TEXTUAL"
    And I fill the answer "Joel Blows" for question 1
    Then I verify that question #2 is "SINGLE_CHOICE"
    And I select choice #2 for question 2
    Then I verify that question #3 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 3
      | 2 | 4 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "My Grades" card to appear
    Then I confirm quiz "AC12-279: Great Manatee Quiz Textual Showstopper" is graded "Automatic" and is "PENDING"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "For Grade" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-279: Great Manatee Quiz Textual Showstopper" by "Joel Blows" with Auto-score "10 of 15"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-279: Great Manatee Quiz Textual Showstopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @AC12-533 @AutomaticGradeFailed @AC12-281
  Scenario: Auto grade system grades Failed if failed on Single-Choice Showstopper question even if quiz contains textual question
  """
    We're using quiz: Great Manatee Quiz Textual AND Showstopper
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-281: Great Manatee Quiz Textual AND Showstopper" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-281: Great Manatee Quiz Textual AND Showstopper"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-281: Great Manatee Quiz Textual AND Showstopper"
    Then I verify that question #1 is "TEXTUAL"
    And I fill the answer "Oh, behave!" for question 1
    Then I verify that question #2 is "SINGLE_CHOICE"
    And I select choice #2 for question 2
    Then I verify that question #3 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 3
      | 1 | 3 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "My Grades" card to appear
    Then I confirm quiz "AC12-281: Great Manatee Quiz Textual AND Showstopper" is graded "Automatic" and is "FAILED"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "Automatically Graded" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-281: Great Manatee Quiz Textual AND Showstopper" as "FAILED" by "Joel Blows" with Auto-score "5 of 15"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-281: Great Manatee Quiz Textual AND Showstopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @AC12-533 @AutomaticGradeFailed @AC12-284
  Scenario: If user failed on Showstopper question auto-grade system grades Failed
  """
    We're using quiz: Great Manatee Quiz NoTextual AND Showstopper
    """
    When I click the "Create New Assignment" button
    # Next step is optional – we can skip it, but the list is more neat this way
    Then I select "MNTEES" group
    # We can select 1st student in the list...
    # And I select student #1 in "MNTEES" group
    # Or we can select the student by name
    And I select student "Joel Blows" in "MNTEES" group
    And I select "AC12-284: Great Manatee Quiz NoTextual AND Showstopper" quiz
    And I click the "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click on "Assignments" on left menu
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "AC12-284: Great Manatee Quiz NoTextual AND Showstopper"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+student@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click on "My Assignments" on left menu
    And I go to the first assignment for quiz "AC12-284: Great Manatee Quiz NoTextual AND Showstopper"
    Then I verify that question #1 is "SINGLE_CHOICE"
    And I select choice #2 for question 1
    Then I verify that question #2 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 2
      | 1 | 3 |
    # Answers 1 and 3 selected above | 1 | 2 | 4 | will be answers 1,2 and 4. Numbers start from 1.
    And I click the "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click on "My Grades" on left menu
    And I wait for "My Grades" card to appear
    Then I confirm quiz "AC12-284: Great Manatee Quiz NoTextual AND Showstopper" is graded "Automatic" and is "FAILED"
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation
    And I wait for login page to load
    Given I enter email "monocled.manatee+teacher@gmail.com"
    And I enter password "MonocledManatee"
    And I click the "Sign In" button
    And I wait for the left menu to be clickable
    When I click on "Submissions" on left menu
    And I click on "Automatically Graded" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "AC12-284: Great Manatee Quiz NoTextual AND Showstopper" as "FAILED" by "Joel Blows" with Auto-score "5 of 10"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "AC12-284: Great Manatee Quiz NoTextual AND Showstopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I click on "Log Out" on left menu
    And I click "Log Out" button on popup confirmation

  @Cleanup @QuizNoTextualCleanup @AC12-275  @AC12-285
  Scenario: Delete the assignment without textual question
    Then I delete row #1 with quiz "AC12-275: Great Manatee Quiz NoTextual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out

  @Cleanup @QuizTextualCleanup @AC12-278 @AC12-286
  Scenario: Delete the assignment with a textual question
    Then I delete row #1 with quiz "AC12-278: Great Manatee Quiz Textual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out

  @Cleanup @QuizTextualShowstopperCleanup
  Scenario: Delete the assignment with a textual question
    Then I delete row #1 with quiz "AC12-279: Great Manatee Quiz Textual Showstopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out

  @Cleanup @QuizTextualAndShowstopperCleanup @AC12-281
  Scenario: Delete the assignment with a textual question
    Then I delete row #1 with quiz "AC12-281: Great Manatee Quiz Textual AND Showstopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out

  @Cleanup @QuizNoTextualAndShowstopperCleanup
  Scenario: Delete the assignment with a textual question
    Then I delete row #1 with quiz "AC12-284: Great Manatee Quiz NoTextual AND Showtopper"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out