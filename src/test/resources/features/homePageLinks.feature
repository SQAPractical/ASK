Feature: Home page - Links

  Scenario Outline: Home page - Links
    Given I open login page
    Then I type email <email>
    Then I type password <pass>
    Then I click Sign in button
    Then I click on <button1> button
    Then I click on <button2> button
    And page <page> appears
    Examples:
      | email                      | pass    | button1  |  button2                | page                 |
    # Teacher account - Links - Go To Users Management
      | "fatitest311+t2@gmail.com" | "12345" | "Home"   |"Go To Users Management" | "Management"         |
    # Teacher account - Links - Go To Submissions
      | "fatitest311+t2@gmail.com" | "12345" | "Home"   |"Go To Submissionst"     | "Submissions"         |
    # Teacher account - Links - Go To Assignments
      | "fatitest311+t2@gmail.com" | "12345" | "Home"   |"Go To Assignments"      | "List of Assignments" |
    # Student account - Links - Go To Assignments
      | "fatitest311+a1@gmail.com" | "12345" | "Home"   |"Go To My Assignments"   | "My Assignments"      |
    # Student account - Links - Go To Grades
      | "fatitest311+a1@gmail.com" | "12345" | "Home"   |"Go To My Grades"        | "My Grades"           |

    