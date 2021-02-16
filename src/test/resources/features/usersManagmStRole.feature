@usrmanage
Feature: User's management - Options in Student's account
  @usrmanage1
  Scenario: Change name - Alphanumeric and special characters
    Given I navigate to login page
    When I log in as a teacher "qa.sofi@gmail.com" and "12345"
    And I navigate to Users Management page
    And I click on the student account
    And I click on Options button
    And I click on Change User's name button
    And I delete old full name
    And I enter new name of the student "Baby Yoda"
    Then full name of the student is changed

  @usrmanage2
  Scenario: Change role
    Given I navigate to login page
    When I log in as a teacher "qa.sofi@gmail.com" and "12345"
    And I navigate to Users Management page
    And I click on the student account
    And I click on Options button
    And I click on Change User's role button
    And I click on Change Role button
    Then User Role is changed from Student to Teacher
    And I change status back to Student









