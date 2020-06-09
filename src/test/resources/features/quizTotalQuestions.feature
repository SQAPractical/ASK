Feature: test suit for total questions in the quiz

  Scenario: Create a quiz with 5 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 5 questions" of the quiz
    And I click on Add Question button
    And I select "Textual" option for the question number "Q1"
    And I type  "question 1" in the question "Q1" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q2"
    And I type  "question 2" in the question "Q2" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q3"
    And I type  "question 3" in the question "Q3" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q4"
    And I type  "question 4" in the question "Q4" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q5"
    And I type  "question 5" in the question "Q5" text field
    And I click on "Save" button
    Then I find a quiz with title "Title - Quiz with 5 questions" from the list of quizzes and click on it
    And I verify total number of questions is "5" in the quiz with title "Title - Quiz with 5 questions"
    And I delete a quiz with title "Title - Quiz with 5 questions"

  Scenario: Verify quiz has to have at least one question
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 1 questions" of the quiz
    And I click on Add Question button
    And I click on "Save" button
    Then I verify error message "Quiz is not completed." appears

  Scenario: Verify quize has to have maximum 50 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 51 questions" of the quiz
    And I click on Add Question button
    And I select "Textual" option for the question number "Q1"
    And I type  "question 1" in the question "Q1" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q2"
    And I type  "question 2" in the question "Q2" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q3"
    And I type  "question 3" in the question "Q3" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q4"
    And I type  "question 4" in the question "Q4" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q5"
    And I type  "question 5" in the question "Q5" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q6"
    And I type  "question 6" in the question "Q6" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q7"
    And I type  "question 7" in the question "Q7" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q8"
    And I type  "question 8" in the question "Q8" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q9"
    And I type  "question 9" in the question "Q9" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q10"
    And I type  "question 10" in the question "Q10" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q11"
    And I type  "question 11" in the question "Q11" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q12"
    And I type  "question 12" in the question "Q12" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q13"
    And I type  "question 13" in the question "Q13" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q14"
    And I type  "question 14" in the question "Q14" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q15"
    And I type  "question 15" in the question "Q15" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q16"
    And I type  "question 16" in the question "Q16" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q17"
    And I type  "question 17" in the question "Q17" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q18"
    And I type  "question 18" in the question "Q18" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q19"
    And I type  "question 19" in the question "Q19" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q20"
    And I type  "question 20" in the question "Q20" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q21"
    And I type  "question 21" in the question "Q21" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q22"
    And I type  "question 22" in the question "Q22" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q23"
    And I type  "question 23" in the question "Q23" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q24"
    And I type  "question 24" in the question "Q24" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q25"
    And I type  "question 25" in the question "Q25" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q26"
    And I type  "question 26" in the question "Q26" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q27"
    And I type  "question 27" in the question "Q27" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q28"
    And I type  "question 28" in the question "Q28" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q29"
    And I type  "question 29" in the question "Q29" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q30"
    And I type  "question 30" in the question "Q30" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q31"
    And I type  "question 31" in the question "Q31" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q32"
    And I type  "question 32" in the question "Q32" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q33"
    And I type  "question 33" in the question "Q33" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q34"
    And I type  "question 34" in the question "Q34" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q35"
    And I type  "question 35" in the question "Q35" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q36"
    And I type  "question 36" in the question "Q36" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q37"
    And I type  "question 37" in the question "Q37" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q38"
    And I type  "question 38" in the question "Q38" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q39"
    And I type  "question 39" in the question "Q39" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q40"
    And I type  "question 40" in the question "Q40" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q41"
    And I type  "question 41" in the question "Q41" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q42"
    And I type  "question 42" in the question "Q42" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q43"
    And I type  "question 43" in the question "Q43" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q44"
    And I type  "question 44" in the question "Q44" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q45"
    And I type  "question 45" in the question "Q45" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q46"
    And I type  "question 46" in the question "Q46" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q47"
    And I type  "question 47" in the question "Q47" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q48"
    And I type  "question 48" in the question "Q48" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q49"
    And I type  "question 49" in the question "Q49" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q50"
    And I type  "question 50" in the question "Q50" text field
    And I click on "Save" button
    Then I find a quiz with title "Title - Quiz with 50 questions" from the list of quizzes and click on it
    And I verify total number of questions is "50" in the quiz with title "Title - Quiz with 50 questions"
    And I delete a quiz with title "Title - Quiz with 50 questions"

  Scenario: Create quiz with 50 questions
    Given I navigate to "login" page
    When I type email "teacher1@gmail.com"
    And I type password "12345"
    And I click Sign In button
    Then I click on "Quizzes" menu item
    When I click on Create New Quiz button
    And I type title "Title - Quiz with 50 questions" of the quiz
    And I click on Add Question button
    And I select "Textual" option for the question number "Q1"
    And I type  "question 1" in the question "Q1" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q2"
    And I type  "question 2" in the question "Q2" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q3"
    And I type  "question 3" in the question "Q3" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q4"
    And I type  "question 4" in the question "Q4" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q5"
    And I type  "question 5" in the question "Q5" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q6"
    And I type  "question 6" in the question "Q6" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q7"
    And I type  "question 7" in the question "Q7" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q8"
    And I type  "question 8" in the question "Q8" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q9"
    And I type  "question 9" in the question "Q9" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q10"
    And I type  "question 10" in the question "Q10" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q11"
    And I type  "question 11" in the question "Q11" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q12"
    And I type  "question 12" in the question "Q12" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q13"
    And I type  "question 13" in the question "Q13" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q14"
    And I type  "question 14" in the question "Q14" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q15"
    And I type  "question 15" in the question "Q15" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q16"
    And I type  "question 16" in the question "Q16" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q17"
    And I type  "question 17" in the question "Q17" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q18"
    And I type  "question 18" in the question "Q18" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q19"
    And I type  "question 19" in the question "Q19" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q20"
    And I type  "question 20" in the question "Q20" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q21"
    And I type  "question 21" in the question "Q21" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q22"
    And I type  "question 22" in the question "Q22" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q23"
    And I type  "question 23" in the question "Q23" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q24"
    And I type  "question 24" in the question "Q24" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q25"
    And I type  "question 25" in the question "Q25" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q26"
    And I type  "question 26" in the question "Q26" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q27"
    And I type  "question 27" in the question "Q27" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q28"
    And I type  "question 28" in the question "Q28" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q29"
    And I type  "question 29" in the question "Q29" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q30"
    And I type  "question 30" in the question "Q30" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q31"
    And I type  "question 31" in the question "Q31" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q32"
    And I type  "question 32" in the question "Q32" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q33"
    And I type  "question 33" in the question "Q33" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q34"
    And I type  "question 34" in the question "Q34" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q35"
    And I type  "question 35" in the question "Q35" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q36"
    And I type  "question 36" in the question "Q36" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q37"
    And I type  "question 37" in the question "Q37" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q38"
    And I type  "question 38" in the question "Q38" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q39"
    And I type  "question 39" in the question "Q39" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q40"
    And I type  "question 40" in the question "Q40" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q41"
    And I type  "question 41" in the question "Q41" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q42"
    And I type  "question 42" in the question "Q42" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q43"
    And I type  "question 43" in the question "Q43" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q44"
    And I type  "question 44" in the question "Q44" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q45"
    And I type  "question 45" in the question "Q45" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q46"
    And I type  "question 46" in the question "Q46" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q47"
    And I type  "question 47" in the question "Q47" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q48"
    And I type  "question 48" in the question "Q48" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q49"
    And I type  "question 49" in the question "Q49" text field
    Then I click on Add Question button
    When I select "Textual" option for the question number "Q50"
    And I type  "question 50" in the question "Q50" text field
    And I click on "Save" button
    Then I verify error message "Maximum 50 questions allowed" appears












