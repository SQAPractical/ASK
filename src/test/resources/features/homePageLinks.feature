Feature: Home page links
  Scenario: My Assignments
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on "My Assignments"
    Then "My Assignments" page will display


  Scenario:My Grades
    Given I navigate to login page
    When I type email "student0@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on "My Assignments"
    Then "My Grades" page will display


Scenario: Home link
  Given I navigate to login page
  When I type email "student0@gmail.com" on login page
  And I type password "12345Abc" on login page
  And I click on sing in button
  Then "home" page loaded
  And I click on "My Assignments"
  And I click on home button
  Then "Home" page will display

  Scenario: Go to Assignments
     Given I navigate to login page
      When I type email "crimean75@yahoo.com" on login page
      And I type password "akam1970" on login page
      And I click on sing in button
      Then "home" page loaded
      And I click on "Assignments"
      Then I should see page "List of Assignments"

  Scenario:  Submissions
    Given I navigate to login page
    When I type email "crimean75@yahoo.com" on login page
    And I type password "akam1970" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on "Submissions"
    Then Submissions page will display

  Scenario: User's Management
    Given  I navigate to login page
    When I type email "crimean75@yahoo.com" on login page
    And I type password "akam1970" on login page
    And I click on sing in button
    Then "home" page loaded
    And I click on "User's Management"
    Then Users Management page displays

  Scenario:  Settings
    Given  I navigate to login page
    When I type email "crimean75+1@gmail.com" on login page
    And I type password "akam1970" on login page
    And I click on sing in button
    Then "home" page loaded










