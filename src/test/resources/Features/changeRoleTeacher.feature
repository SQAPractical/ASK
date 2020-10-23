@fullregression
#Created by Elena
Feature: User's management - Change role in Teacher's account-User can change the role of other user
  Scenario: User's management - Change role in Teacher's account-Teacher can change the role of other Teacher
    Given I open "login" a page
    When I type email "teacher1@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    Then I click Go to Users Management button
    And  I click on teachers button
    Then I click to teachers Name "Diana Brown"
    And I click on the option button
    Then I click on Change User's Role button
    Then I click Change role confirmation button
    And I refresh page
    And I Click on User's Management button
    Then text "Diana Brown" appears in Student list
    And I click on Student Name "Diana Brown"
    And I click on the option button
    And I click on Change User's Role button




