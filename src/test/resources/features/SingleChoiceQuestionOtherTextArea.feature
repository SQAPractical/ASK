Feature: Single Choice Question Other Text Area A22-306
  Scenario Outline: All test cases
    Given I navigate to login page
    Then I type email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click "Sign In" button
    And I click on "Quizzes" on left menu
    And I click "Create New Quiz" button
    And I type <quizTitle> title of the quiz
    And I click on Add question button
    And I select "Single-Choice" question type for question 1
    And I type text "What is the Watermelon?" as a question for question 1
    And I type text "Fruit" of option 1 for question 1
    And I type text "Berry" of option 2 for question 1
    And I select option 2 as correct answer for "Single-Choice" question 1
    And I select option Include Other text area option for this question?
    #A22-532 {
    When I click "Preview" button
    And Element containing text "Other" is displayed
    And I wait 1 sec
    And I click "Close" button
    #A22-532 }
    Then I click Save button in Create New Quiz
    And I wait 1 sec
    Then I click on "Assignments" on left menu
    And I click "Create New Assignment" button
    And I click on Group dropdown in the Give Assignment
    And I select in dropdown menu option <Group>
    And I click on Select Quiz To Assign dropdown in the Give Assignment
    And I wait 1 sec
    And I select in dropdown menu option <quizTitle>
    And I select from list person with name containing text <Student>
    And I click Give Assignment button
    And I wait 1 sec
    And I click on "Log Out" on left menu
    And I click "Log Out" button
    And I wait 1 sec
    And I delete the All Cookies
    Then I navigate to login page
    And I type email <studentEmail>
    And I type password "12345Abc"
    And I click "Sign In" button
    And I wait 2 sec
    And I click "Go To My Assignments" button
    And I wait 1 sec
    And I click Go To Assignment button right of quiz <quizTitle> with valid assignment time in My Assignments
    #A22-533 {
    When Element containing text "Other" is displayed
    #A22-533 }
    And I select option with text "Berry" as answer on question 1
    And I type <textOfAnswer> in Other Text area
    And I click Submit My Answers button
    And I click "Ok" button
    And I wait 1 sec
    And I click on "My Grades" on left menu
    And I wait 1 sec
    And I click Details button right of passed Quiz <quizTitle> with valid submission time in My Grades
    And I wait 1 sec
    And Element containing text <textOfAnswer> is displayed in My Grades Details
    #postconditions
    And I wait 1 sec
    And I click on "Log Out" on left menu
    And I click "Log Out" button
    And I wait 1 sec
    And I delete the All Cookies
    Then I navigate to login page
    Then I type email "teacher5@gmail.com"
    And I type password "12345Abc"
    And I click "Sign In" button
    And I click on "Quizzes" on left menu
    And I delete quiz <quizTitle>
    #And I delete quiz "quizTitle" with valid creation time
    # Set unique quizTitle in Test Data in a table before run, or be sure that there are no quizzes with the same names as in the Test Data existing
    Examples:
      | quizTitle                                | Group      | Student	         | studentEmail         | textOfAnswer                             |#comment
      | "Test Quiz Alphanumeric Other Text Area" | "CAB"      | "David Davidov"  | "student7@gmail.com" | "Yes! Watermelon *a type of berry)@123*" |#A22-508
      | "Test Quiz One Char Other Text Area"     | "ABC"      | "Sophia Jones"   | "student4@gmail.com" | "%"                                      |#A22-516
      | "Test Quiz 1000 Chars Other Text Area"   | "CAB"      | "Mikhail Portnov"| "student9@gmail.com" | "After analyzing hundreds of thousands of employee-generated reviews, CareerBliss found that QA analyst was ranked 2 on their list of happiest jobs. While this may come as a surprise to many testers and QA professionals, CareerBliss Data Scientists (who did not have the happiest job) took into account many factors including compensation, work environment, growth opportunities, company culture, professional reputation, daily tasks, and relationship with the boss and other co-workers to determine the ranking. Software Testing is a Decent Job. That software testing is such a happy experience may have come as a surprise to you since testing is still no walk in the park. One unfortunate fact of life is if it is fun all the time then you have to pay to do it. But if you think about it, jobs related to QA are actually not bad after all. The good things about testing are that it doesn’t require higher education to enter and, relative to most jobs, testing software is well paying, secure, and..." |#A22-527


# A22-534 Skipped while requested feature Time in List Of Assignments isn't created
# A22-515 Skipped because it excess


