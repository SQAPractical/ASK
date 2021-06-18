@fullRegression
Feature: User's management - Options in Student's account
  Scenario: Change User's Group -Alphanumeric and sp char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's management on left navigation menu
    And I click on student name "Mikhail Portnov"
    And I click on Options button
    And I click on Change User's Group button
    And I delete text
    And I type new student group "ABCD1$"
    And I click on Change button
    Then Element with text "Log Out" is displayed on home page

    Scenario: User's management - Change User's Group - Visible from student side
      When I navigate to login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on User's management on left navigation menu
      And I click on student name "Mikhail Portnov"
      And I click on Options button
      And I click on Change User's Group button
      And I delete text
      And I type new student group "ABCD1$"
      And I click on Change button
      Then Element with text "Log Out" is displayed on home page
      And I click on Log Out button
      And I confirm Log Out
      Then Element with text "Sign In" displayed on home page
      And I type email "student9@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      Then Element with text "Log Out" is displayed on home page
      And I click on My Grades button
      And I click on Details button
      Then Element with text "Group" is displayed on the left top of the page

      Scenario:  User's management - Change User's Group - Field is required
        When I navigate to login page
        And I type email "teacher1@gmail.com"
        And I type password "12345Abc"
        And I click on Sign In button
        And I click on User's management on left navigation menu
        And I click on student name "Mikhail Portnov"
        And I click on Options button
        And I click on Change User's Group button
        And I delete text
        And I click on Change button
        Then Error message "" appears

      Scenario: User's management - Change User's Group - Whitespaces not allowed
        When I navigate to login page
        And I type email "teacher1@gmail.com"
        And I type password "12345Abc"
        And I click on Sign In button
        And I click on User's management on left navigation menu
        And I click on student name "Mikhail Portnov"
        And I click on Options button
        And I click on Change User's Group button
        And I delete text
        And I type new student group "Abc d"
        And I click on Change button
        Then Error message "" appears

        Scenario: User's management - Change User's Group - Max char
          When I navigate to login page
          And I type email "teacher1@gmail.com"
          And I type password "12345Abc"
          And I click on Sign In button
          And I click on User's management on left navigation menu
          And I click on student name "Mikhail Portnov"
          And I click on Options button
          And I click on Change User's Group button
          And I delete text
          And I type new student group "CBAABC"
          And I click on Change button
          Then Element with text "Log Out" is displayed on home page

  Scenario: User's management - Change User's Group - Max char+1
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's management on left navigation menu
    And I click on student name "Mikhail Portnov"
    And I click on Options button
    And I click on Change User's Group button
    And I delete text
    And I type new student group "CBAABC1"
    And I click on Change button
    And I click outside the group text field
    Then Error message "" appears

  Scenario: User's management - Change User's Group - Min char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's management on left navigation menu
    And I click on student name "Mikhail Portnov"
    And I click on Options button
    And I click on Change User's Group button
    And I delete text
    And I type new student group "A"
    And I click on Change button
    Then Element with text "Log Out" is displayed on home page

    Scenario: User's Management - Cancel to Change User's Group
      When I navigate to login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on User's management on left navigation menu
      And I click on student name "Mikhail Portnov"
      And I click on Options button
      And I click on Change User's Group button
      And I delete text
      And I type new student group "CBA"
      And I click on Cancel button
      Then Element with text "Log Out" is displayed on home page

  Scenario: Change User's Group -Alphanumeric and sp char Reverse Scenario 1
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on User's management on left navigation menu
    And I click on student name "Mikhail Portnov"
    And I click on Options button
    And I click on Change User's Group button
    And I delete text
    And I type new student group "CAB"
    And I click on Change button
    Then Element with text "Log Out" is displayed on home page
