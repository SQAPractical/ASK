@fullRegression
Feature: User's management - Change User's Role
  Scenario: Change User's Role
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's management option
    And I click on David Davidov student's name
#    And I click on Option button
    And I click on Options button
    And I click on Change User's Role button
    And I click Change Role button
    And I click on Log out button
    And I click on Log Out button in Confirmation window
    And I type email "student7@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "TEACHER" is displayed on home page


    Scenario: Change Teacher's Role to Student Role
      When I navigate to login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on User's management option
      And I click on User's management option
      And I click on label Teachers
      And I click on David Davidov name
      And I click on Options button
      And I click on Change User's Role button
      And I click Change Role button

