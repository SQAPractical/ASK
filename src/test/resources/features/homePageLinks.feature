Feature: Home page - Links

  Scenario: Home page - Links - Teacher - Home - Go To Submissions
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I click "Go To Submissions" link
    Then I verify the page by text "Submissions"

  Scenario: Home page - Links - Teacher - Home - Go To Assignments
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I click "Go To Assignments" link
    Then I verify the page by text "Assignments"

  Scenario: Home page - Links - Teacher - Home - Go To Users Management
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I click "Go To Users Management" link
    Then I verify the page by text "User"


  Scenario: Home page - Links - Teacher - Submissions
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Submissions"
    Then I verify the page by text "Submissions"

  Scenario: Home page - Links - Teacher - Home
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Submissions"
    And I go to "Home"
    Then I verify by "Go To Submissions" link

  Scenario: Home page - Links - Teacher - Assignments
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Assignments"
    Then I verify the page by text "Assignments"

  Scenario: Home page - Links - Teacher - Quizzes
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Quizzes"
    Then I verify the page by text "Quizzes"

  Scenario: Home page - Links - Teacher - Quizzes
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Quizzes"
    Then I verify the page by text "Quizzes"

  Scenario: Home page - Links - Teacher - User's Management
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "User"
    Then I verify the page by text "User"

  Scenario: Home page - Links - Teacher - User's Management - Students
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "User"
    And After I push "Students"
    And I choose first person on the list
    Then I verify that new page contains text "STUDENT"


  Scenario: Home page - Links - Teacher - User's Management - Teachers
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "User"
    And After I push "Teachers"
    And Let choose First person on the list
    Then I verify that new page contains text "TEACHER"


  Scenario: Home page - Links - Teacher - Settings
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Settings"
    Then I verify the page by text "Settings"

  Scenario: Home page - Links - Teacher&Student - Logout
    Given I navigate to login page
    And I type Email "teacher1@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And Then I push "Log Out" button
    And In the pop up window I confirm "Log Out"
    Then I verify the page by text "Portnov Computer School"

  Scenario: Home page - Links - Student - Home - Go To My Assignments
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I click "Go To My Assignments" link
    Then I verify the page by text "Assignments"

  Scenario: Home page - Links - Student - Home - Go To My Grades
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I click "Go To My Grades" link
    Then I verify the page by text "Grades"

  Scenario: Home page - Links - Student - My Assignments
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "My Assignments"
    Then I verify the page by text "My Assignments"

  Scenario: Home page - Links - Student - Home
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "My Assignments"
    And I go to "Home"
    Then I verify by "Go To My Assignments" link

  Scenario: Home page - Links - Student - My Grades
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "My Grades"
    Then I verify the page by text "My Grades"

  Scenario: Home page - Links - Student - Settings
    Given I navigate to login page
    And I type Email "student0@gmail.com"
    And I type Password "12345Abc"
    Then I push "Sign In" button
    And I go to "Settings"
    Then I verify the page by text "Settings"

