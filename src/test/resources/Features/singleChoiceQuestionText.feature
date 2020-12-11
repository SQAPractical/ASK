Feature: Single Choice Question - Text
  Scenario: Single Choice Question - Text- Allowable characters: Alphanumeric & Sp. characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "Module 1" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button for question 1
#    And I click Question filed
    And I Type "c5&" as question for question 1
#    And I click option 1 answer
    And I Type "A" answer for option 1 for question 1
#    And I click option 2
    And I Type "B" answer for option 2 for question 1
    And I select option 1 for question 1 as correct answer
#    I add second question to Quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button for question 2
    And I Type "c5trgh&" as question for question 2
    And I Type "C" answer for option 1 for question 2
#    And I click option 2
    And I Type "D" answer for option 2 for question 2
    And I select option 2 for question 2 as correct answer
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "Module 1"
    And I click on quiz "Module 1"
    And I delete quiz "Module 1"

  Scenario: Single Choice Question - Text - This field is required
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "Module 1" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button
    And I click Question filed
    And I Type "ctwegrf" as question
    And I delete the question
    Then text "This field is required" appears
#    Then This field is required message appear

  Scenario: Single Choice Question - Text - Min 1 character
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "Module 2" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button
    And I click Question filed
    And I Type "c" as question
    And I click option 1 answer
    And I Type "A" for answer
    And I click option 2
    And I type "B"
    And I click radio button correct answer
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "Module 2"
    And I click on quiz "Module 2"
    And I delete quiz "Module 2"

  Scenario: Single Choice Question - Text - Max 1000 characters
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "Module 1" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button for question 1
    And I click Question filed
    And I Type "bmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobo" as question
    And I click option 1 answer
    And I Type "A" for answer
    And I click option 2
    And I type "B"
    And I click radio button correct answer
    And I click Save button
    Then List of Quizzes page loads
    Then List of Quizzes contain quiz "Module 1"
    And I click on quiz "Module 1"
    And I delete quiz "Module 1"

  Scenario: Single Choice Question - Text - Max+1(1001)
    When I open "Login" page
    And I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign In button
    And I click on "Quizzes" menu item
    And I click on "Create New Quiz" button
    And I click Title field
    And I type "Module 1" for the name of quiz
    And I click "Add Question"
    And I click "Single-Choice" radio button
    And I click Question filed
    And I Type "bmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkbobonb!@#$svevetgetgeggwgtgbmdkboboq" as question
    And I click option 1 answer
    Then This is too long, should be not more than max characters message appear