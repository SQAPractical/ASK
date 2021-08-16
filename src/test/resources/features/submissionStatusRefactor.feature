Feature: Test submission status refactored
"""
  Test Set for testing the submission status.
  Jira URL: https://jira.portnov.com/browse/AC12-237
"""

  @AC12-533 @AutomaticGradePassed
  Scenario: Refactor for: Quiz automatically passed if there is no textual question and passing points are enough
    """
    If we do it mimicking steps in the manual test case, we get very long feature files.
    This refactor combines some steps into one (logging in, for example).

    We're using quiz: Great Manatee Quiz NoTextual
    """
    Given I navigate to login page
    And I login with email "monocled.manatee+teacher@gmail.com" and password "MonocledManatee"
    And I click on "Assignments" on left menu
    And I click "Create New Assignment" button
    When I select student "Joel Blows" of "MNTEES" group
    And I select "Great Manatee Quiz NoTextual" quiz
    And I click "Give Assignment" button
    And I wait for the left menu to be clickable
    And I click "Assignments" sidebar button
    And I wait for "Create New Assignment" button to be clickable
    Then I check that assignment #1 is for quiz "Great Manatee Quiz NoTextual"
    And I expand assignment #1
    Then I check that assignment #1 has the name "Joel Blows" on it
    And I log out
    Given I login with email "monocled.manatee+student@gmail.com" and password "MonocledManatee"
    And I wait for the left menu to be clickable
    Then I verify that I have new assignments
    When I click "My Assignments" sidebar button
    And I go to the first assignment for quiz "Great Manatee Quiz NoTextual"
    Then I verify that question #1 is "SINGLE_CHOICE"
    And I select choice #3 for question 1
    Then I verify that question #2 is "MULTIPLE_CHOICE"
    # And here we fill the answers in the horizontal table
    And I give answers for the question 2
      | 1 | 3 |
    # Answers 1 and 3 selected above
    And I click "Submit My Answers" button
    And I click "Ok" button on popup notification
    Then I click "My Grades" sidebar button
    And I wait for "Details" button to be clickable
    Then I confirm quiz "Great Manatee Quiz NoTextual" is graded "Automatic" and is "PASSED"
    And I log out
    Given I login with email "monocled.manatee+teacher@gmail.com" and password "MonocledManatee"
    When I click "Submissions" sidebar button
    And I click on "Automatically Graded" header
    And I filter the list by "MNTEES" group
    Then row #1 should display "Great Manatee Quiz NoTextual" as "PASSED" by "Joel Blows" with Auto-score "11 of 11"
    And I click "Assignments" sidebar button
    Then I delete row #1 with quiz "Great Manatee Quiz NoTextual"
    And I click "Delete" button on popup confirmation
    And I wait for "Create New Assignment" button to be clickable
    And I log out