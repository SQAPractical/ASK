Feature: Check Assignment


  Scenario: Give Assignment to student by name
    Given I open "login" page
    When I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then Text "Teacher" appears
    When I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign from drop down menu
    And I click on Swapna Quiz
    And I click on the name "Sheldon Cooper"
    And I click Give Assignment button

  Scenario: Give Assignment by Group
    Given I open "login" page
    When I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then Text "Teacher" appears
    When I click Assignments button
    And I click Create New Assignment button
    And I click Select Quiz To Assign from drop down menu
    And I click on Swapna Quiz
    And I click on Group Filter
    And I click 001 from drop Group Filter down menu
    And I click on Select All
    And I click Give Assignment button


  Scenario: Delete Assignment
    Given I open "login" page
    When I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign in button
    Then Text "Teacher" appears
    When I click Assignments button
    And I click on Quiz: Swapna Quiz
    And I click on Delete Assignment
    Then Text "Confirmation" appears
    And I click on Delete

