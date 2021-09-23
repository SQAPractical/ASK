Feature: Home page - Links
  Scenario: Home page - Links - Go To My Assignments
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Assignments" menu item

  Scenario: Home page - Links - Go To My Grades
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Grades" menu item

  Scenario: Home page - Links - Go To Submission
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Submissions" menu item

  Scenario: Home page - Links - Go To Assignments
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Assignments" menu item

  Scenario: Home page - Links - Go To Users Management
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "User's Management" menu










