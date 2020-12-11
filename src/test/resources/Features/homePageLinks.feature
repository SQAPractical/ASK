Feature: Home Page-Links
  Scenario: Link "Go To Submissions" for Teacher User
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
   And I click Go To Submissions
    Then Submission page loaded

    Scenario:Link "Go To Assignments" for Teacher User
      When I open "login" page
      And I type email "qa.sofi@gmail.com"
      And I type password "12345"
      And I click Sign In button
      And I click Go To Assignments
      Then Assignments page loaded

  Scenario:Link "Go To Users Management" for Teacher User
    When I open "login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click Go To Users Management
    Then User's Management page loaded


  Scenario: Link "Go To My Assignments" for Student User
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Go To My Assignments
    Then My Assignments page loaded

  Scenario: Link "Go To My Grades" for Student User
    When I open "login" page
    And I type email "student9@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Go To My Grades
    Then My Grades page loaded