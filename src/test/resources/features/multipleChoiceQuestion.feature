Feature:Feature: Multiple Choice Question - Other text area
  Scenario: Multiple Choice Question - Other text area - Text field is present in a Preview Mode
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "quizNK15"
    And I click Add question button
    And I select "Multiple-Choice" question type for question 1 and wait
    And I type text "110" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click "quizNK15" on list of quizzes
    And I click "Preview" button on Quizz "quizNK15" table
    Then textfield "Other" is present in quiz "quizNK15"

  Scenario: Multiple Choice Question - Delete Quiz
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "quizNK15" on list of quizzes
    And I click "Delete" button on Quizz "quizNK15" table
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario: Multiple Choice Question - Other text area - Alphanumeric and special characters
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "quizNK15"
    And I click Add question button
    And I select "Multiple-Choice" question type for question 1 and wait
    And I type text "day of week" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click "Select Quiz To Assign" button on "Give Assignment" page
    And I select "quizNK15" from drop-down list
#    And I click "Group Filter" button on "Give Assignment" page
#    And I select group "CAB" from drop-down list
    And I select student "Natallia K"
#    And I click "Select All" button
    And I click "Give Assignment" button on "Give Assignment" page
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "natashaluk@mail.ru" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I wait for page "Home" to load
    And I click on "My Assignments" menu item
    And I click Go to Assesment button for assignment "quizNK15"
    And I wait for page "Submit My Answers" with element "quizNK15" to load
    And I select checkbox 1 as correct answer for question "b" on student's page
    And I type answer "zxcvb12345!@#$%" for question Other for quiz "quizNK15"
    And I click "Submit My Answers" button for Quizz "quizNK15"
    And I confirm submisson in pop-up window
    And I wait for page Submit My Answers with element "Ny Assignments" to load
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Submissions" menu item
    And I wait for page Submissions to load
    And I click "Automatically Graded" on "Submission" page
    And I click Review button for assignment "quizNK15" for student "Natallia K"
    Then answer "zxcvb12345!@#$%" in Other textarea is present in assessment "quizNK15"
    And I click "Save" button and wait
    And I click on "Quizzes" menu item
    And I click "quizNK15" on list of quizzes
    And I click "Delete" button on Quizz "quizNK15" table
    And I confirm "Delete" in "Confirmation" pop-up window
    And I click on "Assignments" menu item
    And I select Context Menu button for assignment "quizNK15"
    And I click Delete Assignment in pop-up window
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario: Multiple Choice Question - Other text area - Empty field
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "quizNK15"
    And I click Add question button
    And I select "Multiple-Choice" question type for question 1 and wait
    And I type text "day of week" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click "Select Quiz To Assign" button on "Give Assignment" page
    And I select "quizNK15" from drop-down list
    And I select student "Natallia K"
    And I click "Give Assignment" button on "Give Assignment" page
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "natashaluk@mail.ru" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I wait for page "Home" to load
    And I click on "My Assignments" menu item
    And I click Go to Assesment button for assignment "quizNK15"
    And I wait for page "Submit My Answers" with element "quizNK15" to load
    And I select checkbox 1 as correct answer for question "b" on student's page
    Then I submit Quiz "quizNK15"

  Scenario Outline: Multiple Choice Question - Other text area - 1001 char
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "quizNK15"
    And I click Add question button
    And I select "Multiple-Choice" question type for question 1 and wait
    And I type text "day of week" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click "Select Quiz To Assign" button on "Give Assignment" page
    And I select "quizNK15" from drop-down list
    And I select student "Natallia K"
    And I click "Give Assignment" button on "Give Assignment" page
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "natashaluk@mail.ru" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I wait for page "Home" to load
    And I click on "My Assignments" menu item
    And I click Go to Assesment button for assignment "quizNK15"
    And I wait for page "Submit My Answers" with element "quizNK15" to load
    And I select checkbox 1 as correct answer for question "b" on student's page
    And I type answer "<otherFieldInputNegative>" for question Other for quiz "quizNK15"
    Then error message "Too long. Should be no more than 1000 characters" is triggered under "Other" field for assignment "Title of Quiz"

    Examples:
      |otherFieldInputNegative   |
      |ONETHOUSANDANDCHAR $%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertbbnbnbnyuiop!@#$()123456789qwertyuiop!@#$%&()123bn456789qnnnnnENDOFINPUT|

  Scenario: : Multiple Choice Question - Delete Quiz And Assignment
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "quizNK15" on list of quizzes
    And I click "Delete" button on Quizz "quizNK15" table
    And I confirm "Delete" in "Confirmation" pop-up window
    And I click on "Assignments" menu item
    And I select Context Menu button for assignment "quizNK15"
    And I click Delete Assignment in pop-up window
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario Outline: Multiple Choice Question - Other text area - Possible positive combinations (1000 Char - Alphanumeric and special characters - 1 Char)
    When I navigate to login page
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click "Create New Quiz" button
    And I type title of quiz "quizNK15"
    And I click Add question button
#    And I select "Multiple-Choice" question type for question 1
    And I select "Multiple-Choice" question type for question 1 and wait
    And I type text "day of week" for question 1
    And I type text "a" for option 1 for question 1
    And I type text "b" for option 2 for question 1
    And I select checkbox option 1 as correct answer for question 1
    And I select checkbox Other text area as correct answer for question 1
    And I click "Save" button
    And I click on "Assignments" menu item
    And I click "Create New Assignment" button
    And I click "Select Quiz To Assign" button on "Give Assignment" page
    And I select "quizNK15" from drop-down list
    And I select student "Natallia K"
    And I click "Give Assignment" button on "Give Assignment" page
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "natashaluk@mail.ru" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I wait for page "Home" to load
    And I click on "My Assignments" menu item
    And I click Go to Assesment button for assignment "quizNK15"
    And I wait for page "Submit My Answers" with element "quizNK15" to load
    And I select checkbox 1 as correct answer for question "b" on student's page
    And I type answer "<otherFieldInput>" for question Other for quiz "quizNK15"
    And I click "Submit My Answers" button for Quizz "quizNK15"
    And I confirm submisson in pop-up window
    And I wait for page Submit My Answers with element "Ny Assignments" to load
    And I click on "Log Out" menu item
    And I confirm "Log Out" in pop-up window
    And I type email "teacher4@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I click on "Submissions" menu item
    And I wait for page Submissions to load
    And I click "Automatically Graded" on "Submission" page
    And I click Review button for assignment "quizNK15" for student "Natallia K" with "<otherFieldInput>"
    Then answer "<otherFieldInput>" in Other textarea is present in assessment "quizNK15"
    And I click "Save" button and wait
    And I click on "Quizzes" menu item
    And I click "quizNK15" on list of quizzes
    And I click "Delete" button on Quizz "quizNK15" table
    And I confirm "Delete" in "Confirmation" pop-up window
    And I click on "Assignments" menu item
    And I select Context Menu button for assignment "quizNK15"
    And I click Delete Assignment in pop-up window
    And I confirm "Delete" in "Confirmation" pop-up window
    Examples:
      |otherFieldInput  |
      |123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()123456789qwertyuiop!@#$%&()1                 |
      |zxcvb12345!@#$   |
      |$                |






















