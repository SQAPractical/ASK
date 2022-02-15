@FullRegression
Feature: Quiz - Title
  Scenario: Quiz - Title - Alphanumeric & Sp. characters
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I Click "Quizzes" on the left menu
    And I Click the "Create New Quiz" button at the bottom of the page
    And I Enter quiz title "Qwerty12345!@#$%" in the title of the quiz
    And I Click Add Question button
    And I Select question type "Textual" for question 1
    And I type question "How are you?" for question 1
    And I Click Save button
    Then quiz "Qwerty12345!@#$%" is present in List of Quizzes


#  This is not working due to a bug - able to save quiz with no title.
  Scenario: Quiz - Title - The field is required
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I Click "Quizzes" on the left menu
    And I Click the "Create New Quiz" button at the bottom of the page
    And I Enter quiz title "123" in the title of the quiz
    And I delete the quiz title in the title of the quiz
    And I Click Add Question button
    Then message "This field is required" appears

  Scenario: Quiz - Title - Min 1 Character
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I Click "Quizzes" on the left menu
    And I Click the "Create New Quiz" button at the bottom of the page
    And I Enter quiz title "A" in the title of the quiz
    And I Click Add Question button
    And I Select question type "Textual" for question 1
    And I type question "How are you?" for question 1
    And I Click Save button
    Then quiz "A" is present in List of Quizzes

  Scenario: Quiz - Title - Max 62 Characters
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I Click "Quizzes" on the left menu
    And I Click the "Create New Quiz" button at the bottom of the page
    And I Enter quiz title "ffljjpopjrgnnxnkoihvrfkwfkhoidhoihsoidhvvbkkskdegegmlquoetyeti" in the title of the quiz
    And I Click Add Question button
    And I Select question type "Textual" for question 1
    And I type question "How are you?" for question 1
    And I Click Save button
    Then quiz "ffljjpopjrgnnxnkoihvrfkwfkhoidhoihsoidhvvbkkskdegegmlquoetyeti" is present in List of Quizzes

  Scenario: Quiz - Title - 63 Characters
    When I navigate to login page
    And I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign In button
    And I Click "Quizzes" on the left menu
    And I Click the "Create New Quiz" button at the bottom of the page
    And I Enter quiz title "ffljjpopjrgnnxnkoihvrfkwfkhoidhoihsoidhvvbkkskdegegmlquoetyetia" in the title of the quiz
    And I Click Add Question button
    And message "Too long. Should be no more than 62 characters" appears
    And I Select question type "Textual" for question 1
    And I type question "How are you?" for question 1
    And I Click Save button
    Then message "Quiz is not completed. Check highlighted with \"red\" areas" appears





