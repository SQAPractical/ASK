Feature: Quiz - Title
  @Smoke
  Scenario: Quiz - Title - Alphanumeric and sp char
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I type title "TitleQVI"
    And I click Add Question button
#    And I click "Add questions" button
    And I select "Textual" type of question for question 1
#    And I select textual type of question
    And I type text of question "testVI"
    And I Click Save

  Scenario: Quiz - Title - The field is required
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I click title
    And I click outside of title form

  Scenario: Quiz - Title - Max characters 62
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I type title "test62title011111111112222222222333333333344444444445555555555"
    And I click "Add questions" button


  Scenario: Quiz - Title - Max characters 128
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I type title "11111111112222222222333333333344444444445555555555666666666677777777778888888888999999999900000000001111111111222222222233333333"
    And I click "Add questions" button

  Scenario: Quiz - Title - Min characters
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I type title "1"
    And I click "Add questions" button

  Scenario: Quiz - Title - Max characters 62+1
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Quizzes button
    And I click Create New Quiz button
    And I type title "test62title0111111111122222222223333333333444444444455555555551"
    And I click "Add questions" button
