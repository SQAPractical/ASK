Feature: Home Page Buttons

  Scenario: Student - Home Page Buttons - Go to My Assignments
    When I navigate to login page
    And I type email "student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click Go To My Assignments button
    Then My Assignments are present on the page

  Scenario: Student - Home Page Buttons - Go to My Grades
    When I navigate to login page
    And I type email "student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on Go To My Grades button
    Then My Grades are present on the page

  Scenario: Teacher - Home Page Buttons - Go To My Submissions
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on  Go To My Submissions button
    Then Submissions are present on the page

  Scenario: Teacher - Home Page Buttons - Go To Assignments
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on  Go To Assignments button
    Then List of Assignments are present on the page

  Scenario:  Teacher - Home Page Buttons - Go To Management
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on Go To Users Management button
    Then User's Management is present on the page
