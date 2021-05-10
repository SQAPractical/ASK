@fullRegression
Feature: user's management - Change name Option in Student's account
  Scenario: teacher can change student's name using latin characters
    When I navigate to sign-in page
    And I type Email "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on Sign In button
    And I click on User's Management
    And I click on Students
    And I choose "Olga Nikolaeva"
    And I click on Options button
    And I select Change User's Name
    And I delete previous name
    And I type New User Name "Olga Nikolaevatest"
    And I click Change button
    Then New student name is "Olga Nikolaevatest"
# Change name back
    And I click on Options button
    And I select Change User's Name
    And I delete previous name
    And I type New User Name "Olga Nikolaeva"
    And I click Change button




  Scenario: New user's name field required, can't be blank
    When I navigate to sign-in page
    And I type Email "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on Sign In button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I delete previous name
#    And I type New User Name ""
    And I click on Change button
    Then Text "This field is required" appears

  Scenario: User's name can be changed to a name that contains 100 characters including 1 space between two words
    When I navigate to sign-in page
    And I type Email "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on Sign In button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I delete previous name
    And I type New User Name "Alex TeacheruuuuuqrstuvwxyzzzzzzzzzzzzzzzzzzzzzzzzzzzzooooooooowoooooooooooooooowoooooooouuuuuuuuuuA"
    And I click on Change button
    Then New student name is "Alex TeacheruuuuuqrstuvwxyzzzzzzzzzzzzzzzzzzzzzzzzzzzzooooooooowoooooooooooooooowoooooooouuuuuuuuuuA"
# Change name back
    And I click on Options button
    And I select Change User's Name
    And I delete previous name
    And I type New User Name "Alex Teacher"
    And I click Change button

  Scenario: Student name cannot have 101 characters
      When I navigate to sign-in page
      And I type Email "teacher3@gmail.com"
      And And I type Password "12345Abc"
      And I click on Sign In button
      And I click on User's Management
      And I click on Students
      And I choose "Alex Teacher"
      And I click on Options button
      And I select Change User's Name
      And I type New User Name "AlexTeacheruuuuuqrstuvwxyzzzzzzzzzzzzzzzzzzzzzzzzzzzzoooooooooooooooooooooooooo oooooooouuuuuuuuuuAle"
      Then Text "Too long. Should be no more than 100 characters" appears

  Scenario:User's name can be changed to a name that contains 2 characters including 1 space between two words
    When I navigate to sign-in page
    And I type Email "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on Sign In button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "A L "
    And I click on Change button

  Scenario:User's name can not be changed to a name that contains 1 character
    When I navigate to sign-in page
    And I type Email "teacher3@gmail.com"
    And And I type Password "12345Abc"
    And I click on Sign In button
    And I click on User's Management
    And I click on Students
    And I choose "Alex Teacher"
    And I click on Options button
    And I select Change User's Name
    And I type New User Name "A"
    Then Text "Should contain only first and last name latin characters" appears

    Scenario:User's name cannot be changed to a name that contains trailing and leading spaces
      When I navigate to sign-in page
      And I type Email "teacher3@gmail.com"
      And And I type Password "12345Abc"
      And I click on Sign In button
      And I click on User's Management
      And I click on Students
      And I choose "Alex Teacher"
      And I click on Options button
      And I select Change User's Name
      And I type New User Name "  Alex Teacher"
      Then Text "Should contain only first and last name latin characters" appears









