Feature: Home page - Buttons
  Scenario: Home page - Buttons - T - Go To Submissions
    When I navigate to login page
    And I type an email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Home button
    And I click Go To Submissions button
    Then "Submissions" window appears

  Scenario: Home page - Buttons - T - Go to Assignments
    When I navigate to login page
    And I type an email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Home button
    And I click Go To Assignments button
    Then "List of Assignments" window appears

  Scenario: Home page - Buttons - T - Go to User's Management
    When I navigate to login page
    And I type an email "teacher4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Home button
    And I click Go To Users Managements button
    Then "User's Management" screen appears

  Scenario: Home page - Buttons - S - Go To My Assignments
    When  I navigate to login page
    And I type an email "student4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Home button
    And I click Go to My Assignments button
    Then "My Assignments" window appears

  Scenario: Home page - Buttons - S - Go To My Grades button
    When  I navigate to login page
    And I type an email "student4@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Home button
    And I click Go To My Grades button
    Then "My Grades" window appears

