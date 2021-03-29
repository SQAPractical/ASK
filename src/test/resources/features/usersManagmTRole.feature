Feature: User's management - Options in Teacher’s account - Change Role
  Scenario: User's management - Options in Teacher’s account - Change Role Student
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Teachers button
    And I click on user "Vitalija Ringyte Lapaite"
    And I click on Options button
    And I click on Change User's Role button
    And I click on "Change Role" button
    Then Text "STUDENT" appears

  Scenario: User's management - Options in Teacher’s account - Change Role Teacher
    When I navigate to login page
    And I type email "teacher2@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's Management button
    And I click on Students button
    And I click on user "Vitalija Ringyte Lapaite"
    And I push on Options button
    And I click on Change User's Role button
    And I click on "Change Role" button
    Then Text "TEACHER" appears




