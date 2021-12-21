@userManagement

Feature: User's management - Options in Student's account
  Background:
    Given I navigate to log in page
    And I type email "teacher1@gmail.com" to email field
    And I type password "12345Abc" to log in
    And I click on Sign In button
    And teacher  "Anna Ivanova" appears
    And I click on User"s Management" on menu

  @userManagement1 @changeName
  Scenario: User's management - Options in Student's account - Can change user's name
    And I click on student name "Aiza Student"
    And I click on Options button
    And I wait for 3 sec
    And I click on Change User's Name
    And I change user name to "A1za S!ude#t"
    And I wait for 3 sec
    And I click "Change" button
    And I check that name is changed to "A1za S!ude#t"


  Scenario: To reverse - User's management - Options in Student's account - Can change user's name
    And I click on student name "A1za S!ude#t"
    And I click on Options button
    And I wait for 3 sec
    And I click on Change User's Name
    And I change user name to "Aiza Student"
    And I click "Change" button
    And I check that name is changed to "Aiza Student"

  Scenario: To reverse - User's management - Options in Student's account - Name can't be empty
    And I click on student name "Aiza Student"
    And I click on Options button
    And I wait for 3 sec
    And I click on Change User's Name
    And I delete user name
    And I wait for 3 sec
    And I click on some sign
    And I click "Change" button
    And I wait for 3 sec
    And I check "Change" button is disabled








