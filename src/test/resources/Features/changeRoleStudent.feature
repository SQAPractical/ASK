Feature: Change role in Student's account

  Scenario: Change role in Student's account - Can be changed
    Given I open "login" a page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click Go to Users Management button
    And I click on Student button
    And I click on Student Name "David Davidov "
    And I click on the option button
    And I click on Change User's Role button
    And I click Change role confirmation button
    And I Click on User's Management button
    Then text "TEACHER" appears
    And I click on teachers button
    Then text "David Davidov " appears in Teacher list
#   To change role back
    Then I click to teachers Name "David Davidov "
    And I click on the option button
    Then I click on Change User's Role button
    Then I click Change role confirmation button
    Then text "STUDENT" appears
    And I Click on User's Management button
    Then text "Victor Victorov " appears in Student list
