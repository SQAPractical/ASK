Feature: Assignments -Students# and name
  Scenario: Assignments -Students# and name- Teacher can assign quiz for students individually-min students
    When I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    And I click on Sign In button
    And I click on Assignments button
    And I click on Create New Assignment button
    And I click on Select Quiz To Assign
    And I select "Test_2" quiz
    And I select a student "Alex Teacher"
