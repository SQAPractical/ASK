Feature: user's management - Change name Option in Student's account
  Scenario: teacher can change student's name using alphanumeric and special characters
    When I navigate to sign-in page
    And I type "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on sign-in button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "Alex Teacher%123"
    Then text "Should contain only first and last name latin characters" appears

  Scenario: New user's name field required, can't be blank
    When I navigate to sign-in page
    And I type "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on sign-in button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name " "
    Then text "This field is required" appears

  Scenario:User's name cannot be changed to a name that contains 100 characters including 1 space between two words
    When I navigate to sign-in page
    And I type "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on sign-in button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "Alex Teacheruuuuuqrstuvwxyzzzzzzzzzzzzzzzzzzzzzzzzzzzzoooooooooooooooooooooooooo oooooooouuuuuuuuuuA"
    Then text "Should contain only first and last name latin characters" appears

  Scenario: Student name cannot have 101 characters
      When I navigate to sign-in page
      And I type "teacher3@gmail.com"
      And And I type Password "12345Abc"
      And I click on sign-in button
      And I click on User's Management
      And I click on Students
      And I choose "Alex Teacher"
      And I click on Options button
      And I select Change User's Name
      And I type New User Name "AlexTeacheruuuuuqrstuvwxyzzzzzzzzzzzzzzzzzzzzzzzzzzzzoooooooooooooooooooooooooo oooooooouuuuuuuuuuAle"
      Then text "Too long. Should be no more than 100 characters" appears

  Scenario:User's name can be changed to a name that contains 2 characters including 1 space between two words
    When I navigate to sign-in page
    And I type "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on sign-in button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "A L "
    And I click on Change button

  Scenario:User's name can not be changed to a name that contains 1 character
    When I navigate to sign-in page
    And I type "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on sign-in button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "A"
    Then text "Should contain only first and last name latin characters" appears

    Scenario:User's name cannot be changed to a name that contains trailing and leading spaces
      When I navigate to sign-in page
      And I type "teacher3@gmail.com"
      And And I type Password "12345Abc"
      And I click on sign-in button
      And I click on User's Management
      And I click on Students
      And I choose "Alex Teacher"
      And I click on Options button
      And I select Change User's Name
      And I type New User Name "  Alex Teacher"
      Then text "Should contain only first and last name latin characters" appears









