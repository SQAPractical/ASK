@FullRegression
Feature: User's management - Options in Teacher's account
  Scenario: User's management - Options in Teacher's account - Change User's role
    When i navigate to login page
    And i type my email "teacher3@gmail.com"
    And i type my password "12345Abc"
    And i click Sign in button
    Then Sign out sign appears
    And i click on User's Management
    And i click on Teachers tab
    And i click "DDD AAA"
    And i click Options
    And i click Change User's role
    And i click Change Role
    Then user role is "STUDENT"
    And i click Options
    And i click Change User's role
    And i click Change Role
    Then user role is "TEACHER"