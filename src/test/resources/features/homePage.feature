@homePage
Feature: Home Page
  @Smoke
  Scenario: Student - go to my assignments
    When I navigate to login page
    And I type email "student0@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then button My Assignments is displayed on home page


  Scenario: Student - Go To My Grades
    When I navigate to login page
    And I type email "student0@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on Go To My Grades button
    Then Element with text "My Grades" is displayed on home page

  Scenario: Teacher - Go To Submission
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Go To Submissions" is displayed on home page
    And I click on Submissions button
    Then Submissions page is displayed

  Scenario: Teacher - Go To Assignments
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Assignments" is displayed on home page
    And I click on Assignment button
    Then Assignments page is displayed

  Scenario: Teacher - Go To Users Management
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    Then Element with text "Go To Users Management" is displayed on home page
    And I click on Go To User's Management button
    Then Users Management page is displayed




