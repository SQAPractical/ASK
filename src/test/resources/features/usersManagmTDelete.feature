Feature: User's management - Options in Teacher's account - Delete user



  Scenario: User's management - Options in Teacher’s account -With teacher's account can be deleted the user from Teachers list
    When I Navigate to email generator
    And I copy email
    When I navigate to registration page
    And I type first name "Teacher"
    And I type last name "M"
    And I type email "afger@gmailya.com"
    And I type group code "TT33"
    And I type password "12345M"
    And I confirm password "12345M"
    And I click Register me button
    Then Text "Users already exist and activated" appears

    Scenario: With teacher's account can be change Student account to Teacher account
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I push the  button User's management
      And I click the button Student
      And I click "Teacher M" name
      And I click the button Option
      And I click Change User's Role
      And  I click "Change Role" button
      Then User became a teacher


      Scenario: With teacher's account can be deleted the user from Teachers list
        When I navigate to login page
        And I type email "teacher3@gmail.com"
        And I type password "12345Abc"
        And I click on Sign In button
        And I push the  button User's management
        And I push the  button Teacher
        And I click "Teacher Management" name
        And I click the button Option
        And I click "Delete User" button
        And I click "Delete" button
        Then Text "User was deleted. " appears








    
    






 








