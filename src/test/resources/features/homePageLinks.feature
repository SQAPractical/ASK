@FullRegression
Feature: Home page - Links
  @Smoke
  Scenario: Home page - Links - Go To My Assignments
    When I navigate to login page
#    And I type email "student1@gmail.com"
#    And I type password "12345Abc"
#    And I click Sign In button
#    And I click "Go To My Assignments" on home page
#    Then Text "My Assignments" appears

  Scenario: Home page - Links - Go To My Grades
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Go To My Grades" on home page
    Then Text "My Grades" appears


  Scenario: Home page - Links - Go To Submission
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Go To Submission" on home page
    Then Text "Submission" appears



  Scenario: Home page - Links - Go To Assignments
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Go To Assignments" on home page
    Then Text "List of Assignments" appears

  @Smoke
  Scenario: Home page - Links - Go To Users Management
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Go To Users Management" on home page
    Then Text "Students" appears
    Then url contains "users-management"










