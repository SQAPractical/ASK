@FullRegression
Feature: Quiz - Total Questions
  Scenario: Quiz - Total Questions - Allows to save a quiz with 1 question
    When I navigate to the login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click on Create New Quiz button
    And I type quiz title "test12345 test"
    And I click Add question button
    And I select "Single-Choice" type of question for question 1
    And I type text "What is QA?" of question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select Option 1 as correct answer for question 1
    And I click Save button
    And I select quiz "test12345 test" from list of quizzes
    And I scroll down the web page by the visibility of the element
    Then I verify total number equal 1
    Then I delete the quiz "test12345 test"

    Scenario:  Allows to save a quiz with 50 questions (max supported number).
      When I navigate to the login page
      And I type email "teacher1@gmail.com"
      And I type password "12345Abc"
      And I click Sign In button
      And I click on "Quizzes" on left menu
      And I click on Create New Quiz button
      And I type quiz title "test12345 test"
      And I click Add question button
      And I select "Single-Choice" type of question for question 1
      And I type text "What is QA?" of question 1
      And I type text "A" for option 1 for question 1
      And I type text "B" for option 2 for question 1
      And I select Option 1 as correct answer for question 1

      And I click Add question button
      And I select "Single-Choice" type of question for question 2
      And I type text "What is QA?" of question 2
      And I type text "A" for option 1 for question 2
      And I type text "B" for option 2 for question 2
      And I select Option 1 as correct answer for question 2

      And I click Add question button
      And I select "Single-Choice" type of question for question 3
      And I type text "What is QA?" of question 3
      And I type text "A" for option 1 for question 3
      And I type text "B" for option 2 for question 3
      And I select Option 1 as correct answer for question 3

      And I click Add question button
      And I select "Single-Choice" type of question for question 4
      And I type text "What is QA?" of question 4
      And I type text "A" for option 1 for question 4
      And I type text "B" for option 2 for question 4
      And I select Option 1 as correct answer for question 4

      And I click Add question button
      And I select "Single-Choice" type of question for question 5
      And I type text "What is QA?" of question 5
      And I type text "A" for option 1 for question 5
      And I type text "B" for option 2 for question 5
      And I select Option 1 as correct answer for question 5

      And I click Add question button
      And I select "Single-Choice" type of question for question 6
      And I type text "What is QA?" of question 6
      And I type text "A" for option 1 for question 6
      And I type text "B" for option 2 for question 6
      And I select Option 1 as correct answer for question 6

      And I click Add question button
      And I select "Single-Choice" type of question for question 7
      And I type text "What is QA?" of question 7
      And I type text "A" for option 1 for question 7
      And I type text "B" for option 2 for question 7
      And I select Option 1 as correct answer for question 7

      And I click Add question button
      And I select "Single-Choice" type of question for question 8
      And I type text "What is QA?" of question 8
      And I type text "A" for option 1 for question 8
      And I type text "B" for option 2 for question 8
      And I select Option 1 as correct answer for question 8

      And I click Add question button
      And I select "Single-Choice" type of question for question 9
      And I type text "What is QA?" of question 9
      And I type text "A" for option 1 for question 9
      And I type text "B" for option 2 for question 9
      And I select Option 1 as correct answer for question 9

      And I click Add question button
      And I select "Single-Choice" type of question for question 10
      And I type text "What is QA?" of question 10
      And I type text "A" for option 1 for question 10
      And I type text "B" for option 2 for question 10
      And I select Option 1 as correct answer for question 10

      And I click Add question button
      And I select "Single-Choice" type of question for question 11
      And I type text "What is QA?" of question 11
      And I type text "A" for option 1 for question 11
      And I type text "B" for option 2 for question 11
      And I select Option 1 as correct answer for question 11

      And I click Add question button
      And I select "Single-Choice" type of question for question 12
      And I type text "What is QA?" of question 12
      And I type text "A" for option 1 for question 12
      And I type text "B" for option 2 for question 12
      And I select Option 1 as correct answer for question 12

      And I click Add question button
      And I select "Single-Choice" type of question for question 13
      And I type text "What is QA?" of question 13
      And I type text "A" for option 1 for question 13
      And I type text "B" for option 2 for question 13
      And I select Option 1 as correct answer for question 13

      And I click Add question button
      And I select "Single-Choice" type of question for question 14
      And I type text "What is QA?" of question 14
      And I type text "A" for option 1 for question 14
      And I type text "B" for option 2 for question 14
      And I select Option 1 as correct answer for question 14

      And I click Add question button
      And I select "Single-Choice" type of question for question 15
      And I type text "What is QA?" of question 15
      And I type text "A" for option 1 for question 15
      And I type text "B" for option 2 for question 15
      And I select Option 1 as correct answer for question 15

      And I click Add question button
      And I select "Single-Choice" type of question for question 16
      And I type text "What is QA?" of question 16
      And I type text "A" for option 1 for question 16
      And I type text "B" for option 2 for question 16
      And I select Option 1 as correct answer for question 16

      And I click Add question button
      And I select "Single-Choice" type of question for question 17
      And I type text "What is QA?" of question 17
      And I type text "A" for option 1 for question 17
      And I type text "B" for option 2 for question 17
      And I select Option 1 as correct answer for question 17

      And I click Add question button
      And I select "Single-Choice" type of question for question 18
      And I type text "What is QA?" of question 18
      And I type text "A" for option 1 for question 18
      And I type text "B" for option 2 for question 18
      And I select Option 1 as correct answer for question 18

      And I click Add question button
      And I select "Single-Choice" type of question for question 19
      And I type text "What is QA?" of question 19
      And I type text "A" for option 1 for question 19
      And I type text "B" for option 2 for question 19
      And I select Option 1 as correct answer for question 19

      And I click Add question button
      And I select "Single-Choice" type of question for question 20
      And I type text "What is QA?" of question 20
      And I type text "A" for option 1 for question 20
      And I type text "B" for option 2 for question 20
      And I select Option 1 as correct answer for question 20

      And I click Add question button
      And I select "Single-Choice" type of question for question 21
      And I type text "What is QA?" of question 21
      And I type text "A" for option 1 for question 21
      And I type text "B" for option 2 for question 21
      And I select Option 1 as correct answer for question 21

      And I click Add question button
      And I select "Single-Choice" type of question for question 22
      And I type text "What is QA?" of question 22
      And I type text "A" for option 1 for question 22
      And I type text "B" for option 2 for question 22
      And I select Option 1 as correct answer for question 22

      And I click Add question button
      And I select "Single-Choice" type of question for question 23
      And I type text "What is QA?" of question 23
      And I type text "A" for option 1 for question 23
      And I type text "B" for option 2 for question 23
      And I select Option 1 as correct answer for question 23

      And I click Add question button
      And I select "Single-Choice" type of question for question 24
      And I type text "What is QA?" of question 24
      And I type text "A" for option 1 for question 24
      And I type text "B" for option 2 for question 24
      And I select Option 1 as correct answer for question 24

      And I click Add question button
      And I select "Single-Choice" type of question for question 25
      And I type text "What is QA?" of question 25
      And I type text "A" for option 1 for question 25
      And I type text "B" for option 2 for question 25
      And I select Option 1 as correct answer for question 25

      And I click Add question button
      And I select "Single-Choice" type of question for question 26
      And I type text "What is QA?" of question 26
      And I type text "A" for option 1 for question 26
      And I type text "B" for option 2 for question 26
      And I select Option 1 as correct answer for question 26

      And I click Add question button
      And I select "Single-Choice" type of question for question 27
      And I type text "What is QA?" of question 27
      And I type text "A" for option 1 for question 27
      And I type text "B" for option 2 for question 27
      And I select Option 1 as correct answer for question 27

      And I click Add question button
      And I select "Single-Choice" type of question for question 28
      And I type text "What is QA?" of question 28
      And I type text "A" for option 1 for question 28
      And I type text "B" for option 2 for question 28
      And I select Option 1 as correct answer for question 28

      And I click Add question button
      And I select "Single-Choice" type of question for question 29
      And I type text "What is QA?" of question 29
      And I type text "A" for option 1 for question 29
      And I type text "B" for option 2 for question 29
      And I select Option 1 as correct answer for question 29

      And I click Add question button
      And I select "Single-Choice" type of question for question 30
      And I type text "What is QA?" of question 30
      And I type text "A" for option 1 for question 30
      And I type text "B" for option 2 for question 30
      And I select Option 1 as correct answer for question 30

      And I click Add question button
      And I select "Single-Choice" type of question for question 31
      And I type text "What is QA?" of question 31
      And I type text "A" for option 1 for question 31
      And I type text "B" for option 2 for question 31
      And I select Option 1 as correct answer for question 31

      And I click Add question button
      And I select "Single-Choice" type of question for question 32
      And I type text "What is QA?" of question 32
      And I type text "A" for option 1 for question 32
      And I type text "B" for option 2 for question 32
      And I select Option 1 as correct answer for question 32

      And I click Add question button
      And I select "Single-Choice" type of question for question 33
      And I type text "What is QA?" of question 33
      And I type text "A" for option 1 for question 33
      And I type text "B" for option 2 for question 33
      And I select Option 1 as correct answer for question 33

      And I click Add question button
      And I select "Single-Choice" type of question for question 34
      And I type text "What is QA?" of question 34
      And I type text "A" for option 1 for question 34
      And I type text "B" for option 2 for question 34
      And I select Option 1 as correct answer for question 34

      And I click Add question button
      And I select "Single-Choice" type of question for question 35
      And I type text "What is QA?" of question 35
      And I type text "A" for option 1 for question 35
      And I type text "B" for option 2 for question 35
      And I select Option 1 as correct answer for question 35

      And I click Add question button
      And I select "Single-Choice" type of question for question 36
      And I type text "What is QA?" of question 36
      And I type text "A" for option 1 for question 36
      And I type text "B" for option 2 for question 36
      And I select Option 1 as correct answer for question 36

      And I click Add question button
      And I select "Single-Choice" type of question for question 37
      And I type text "What is QA?" of question 37
      And I type text "A" for option 1 for question 37
      And I type text "B" for option 2 for question 37
      And I select Option 1 as correct answer for question 37

      And I click Add question button
      And I select "Single-Choice" type of question for question 38
      And I type text "What is QA?" of question 38
      And I type text "A" for option 1 for question 38
      And I type text "B" for option 2 for question 38
      And I select Option 1 as correct answer for question 38

      And I click Add question button
      And I select "Single-Choice" type of question for question 39
      And I type text "What is QA?" of question 39
      And I type text "A" for option 1 for question 39
      And I type text "B" for option 2 for question 39
      And I select Option 1 as correct answer for question 39

      And I click Add question button
      And I select "Single-Choice" type of question for question 40
      And I type text "What is QA?" of question 40
      And I type text "A" for option 1 for question 40
      And I type text "B" for option 2 for question 40
      And I select Option 1 as correct answer for question 40

      And I click Add question button
      And I select "Single-Choice" type of question for question 41
      And I type text "What is QA?" of question 41
      And I type text "A" for option 1 for question 41
      And I type text "B" for option 2 for question 41
      And I select Option 1 as correct answer for question 41

      And I click Add question button
      And I select "Single-Choice" type of question for question 42
      And I type text "What is QA?" of question 42
      And I type text "A" for option 1 for question 42
      And I type text "B" for option 2 for question 42
      And I select Option 1 as correct answer for question 42

      And I click Add question button
      And I select "Single-Choice" type of question for question 43
      And I type text "What is QA?" of question 43
      And I type text "A" for option 1 for question 43
      And I type text "B" for option 2 for question 43
      And I select Option 1 as correct answer for question 43

      And I click Add question button
      And I select "Single-Choice" type of question for question 44
      And I type text "What is QA?" of question 44
      And I type text "A" for option 1 for question 44
      And I type text "B" for option 2 for question 44
      And I select Option 1 as correct answer for question 44

      And I click Add question button
      And I select "Single-Choice" type of question for question 45
      And I type text "What is QA?" of question 45
      And I type text "A" for option 1 for question 45
      And I type text "B" for option 2 for question 45
      And I select Option 1 as correct answer for question 45

      And I click Add question button
      And I select "Single-Choice" type of question for question 46
      And I type text "What is QA?" of question 46
      And I type text "A" for option 1 for question 46
      And I type text "B" for option 2 for question 46
      And I select Option 1 as correct answer for question 46

      And I click Add question button
      And I select "Single-Choice" type of question for question 47
      And I type text "What is QA?" of question 47
      And I type text "A" for option 1 for question 47
      And I type text "B" for option 2 for question 47
      And I select Option 1 as correct answer for question 47

      And I click Add question button
      And I select "Single-Choice" type of question for question 48
      And I type text "What is QA?" of question 48
      And I type text "A" for option 1 for question 48
      And I type text "B" for option 2 for question 48
      And I select Option 1 as correct answer for question 48

      And I click Add question button
      And I select "Single-Choice" type of question for question 49
      And I type text "What is QA?" of question 49
      And I type text "A" for option 1 for question 49
      And I type text "B" for option 2 for question 49
      And I select Option 1 as correct answer for question 49

      And I click Add question button
      And I select "Single-Choice" type of question for question 50
      And I type text "What is QA?" of question 50
      And I type text "A" for option 1 for question 50
      And I type text "B" for option 2 for question 50
      And I select Option 1 as correct answer for question 50

      And I click Save button
      And I select quiz "test12345 test" from list of quizzes
      And I scroll down the web page by the visibility of the element
      Then I verify total number equal 50
      Then I delete the quiz "test12345 test"

    Scenario: Quiz - Total Questions - Doesn't allow to save a quiz with more than 50 questions.
    When I navigate to the login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click on Create New Quiz button
    And I type quiz title "test12345 test"
    And I click Add question button
    And I select "Single-Choice" type of question for question 1
    And I type text "What is QA?" of question 1
    And I type text "A" for option 1 for question 1
    And I type text "B" for option 2 for question 1
    And I select Option 1 as correct answer for question 1

    And I click Add question button
    And I select "Single-Choice" type of question for question 2
    And I type text "What is QA?" of question 2
    And I type text "A" for option 1 for question 2
    And I type text "B" for option 2 for question 2
    And I select Option 1 as correct answer for question 2

    And I click Add question button
    And I select "Single-Choice" type of question for question 3
    And I type text "What is QA?" of question 3
    And I type text "A" for option 1 for question 3
    And I type text "B" for option 2 for question 3
    And I select Option 1 as correct answer for question 3

    And I click Add question button
    And I select "Single-Choice" type of question for question 4
    And I type text "What is QA?" of question 4
    And I type text "A" for option 1 for question 4
    And I type text "B" for option 2 for question 4
    And I select Option 1 as correct answer for question 4

    And I click Add question button
    And I select "Single-Choice" type of question for question 5
    And I type text "What is QA?" of question 5
    And I type text "A" for option 1 for question 5
    And I type text "B" for option 2 for question 5
    And I select Option 1 as correct answer for question 5

    And I click Add question button
    And I select "Single-Choice" type of question for question 6
    And I type text "What is QA?" of question 6
    And I type text "A" for option 1 for question 6
    And I type text "B" for option 2 for question 6
    And I select Option 1 as correct answer for question 6

    And I click Add question button
    And I select "Single-Choice" type of question for question 7
    And I type text "What is QA?" of question 7
    And I type text "A" for option 1 for question 7
    And I type text "B" for option 2 for question 7
    And I select Option 1 as correct answer for question 7

    And I click Add question button
    And I select "Single-Choice" type of question for question 8
    And I type text "What is QA?" of question 8
    And I type text "A" for option 1 for question 8
    And I type text "B" for option 2 for question 8
    And I select Option 1 as correct answer for question 8

    And I click Add question button
    And I select "Single-Choice" type of question for question 9
    And I type text "What is QA?" of question 9
    And I type text "A" for option 1 for question 9
    And I type text "B" for option 2 for question 9
    And I select Option 1 as correct answer for question 9

    And I click Add question button
    And I select "Single-Choice" type of question for question 10
    And I type text "What is QA?" of question 10
    And I type text "A" for option 1 for question 10
    And I type text "B" for option 2 for question 10
    And I select Option 1 as correct answer for question 10

    And I click Add question button
    And I select "Single-Choice" type of question for question 11
    And I type text "What is QA?" of question 11
    And I type text "A" for option 1 for question 11
    And I type text "B" for option 2 for question 11
    And I select Option 1 as correct answer for question 11

    And I click Add question button
    And I select "Single-Choice" type of question for question 12
    And I type text "What is QA?" of question 12
    And I type text "A" for option 1 for question 12
    And I type text "B" for option 2 for question 12
    And I select Option 1 as correct answer for question 12

    And I click Add question button
    And I select "Single-Choice" type of question for question 13
    And I type text "What is QA?" of question 13
    And I type text "A" for option 1 for question 13
    And I type text "B" for option 2 for question 13
    And I select Option 1 as correct answer for question 13

    And I click Add question button
    And I select "Single-Choice" type of question for question 14
    And I type text "What is QA?" of question 14
    And I type text "A" for option 1 for question 14
    And I type text "B" for option 2 for question 14
    And I select Option 1 as correct answer for question 14

    And I click Add question button
    And I select "Single-Choice" type of question for question 15
    And I type text "What is QA?" of question 15
    And I type text "A" for option 1 for question 15
    And I type text "B" for option 2 for question 15
    And I select Option 1 as correct answer for question 15

    And I click Add question button
    And I select "Single-Choice" type of question for question 16
    And I type text "What is QA?" of question 16
    And I type text "A" for option 1 for question 16
    And I type text "B" for option 2 for question 16
    And I select Option 1 as correct answer for question 16

    And I click Add question button
    And I select "Single-Choice" type of question for question 17
    And I type text "What is QA?" of question 17
    And I type text "A" for option 1 for question 17
    And I type text "B" for option 2 for question 17
    And I select Option 1 as correct answer for question 17

    And I click Add question button
    And I select "Single-Choice" type of question for question 18
    And I type text "What is QA?" of question 18
    And I type text "A" for option 1 for question 18
    And I type text "B" for option 2 for question 18
    And I select Option 1 as correct answer for question 18

    And I click Add question button
    And I select "Single-Choice" type of question for question 19
    And I type text "What is QA?" of question 19
    And I type text "A" for option 1 for question 19
    And I type text "B" for option 2 for question 19
    And I select Option 1 as correct answer for question 19

    And I click Add question button
    And I select "Single-Choice" type of question for question 20
    And I type text "What is QA?" of question 20
    And I type text "A" for option 1 for question 20
    And I type text "B" for option 2 for question 20
    And I select Option 1 as correct answer for question 20

    And I click Add question button
    And I select "Single-Choice" type of question for question 21
    And I type text "What is QA?" of question 21
    And I type text "A" for option 1 for question 21
    And I type text "B" for option 2 for question 21
    And I select Option 1 as correct answer for question 21

    And I click Add question button
    And I select "Single-Choice" type of question for question 22
    And I type text "What is QA?" of question 22
    And I type text "A" for option 1 for question 22
    And I type text "B" for option 2 for question 22
    And I select Option 1 as correct answer for question 22

    And I click Add question button
    And I select "Single-Choice" type of question for question 23
    And I type text "What is QA?" of question 23
    And I type text "A" for option 1 for question 23
    And I type text "B" for option 2 for question 23
    And I select Option 1 as correct answer for question 23

    And I click Add question button
    And I select "Single-Choice" type of question for question 24
    And I type text "What is QA?" of question 24
    And I type text "A" for option 1 for question 24
    And I type text "B" for option 2 for question 24
    And I select Option 1 as correct answer for question 24

    And I click Add question button
    And I select "Single-Choice" type of question for question 25
    And I type text "What is QA?" of question 25
    And I type text "A" for option 1 for question 25
    And I type text "B" for option 2 for question 25
    And I select Option 1 as correct answer for question 25

    And I click Add question button
    And I select "Single-Choice" type of question for question 26
    And I type text "What is QA?" of question 26
    And I type text "A" for option 1 for question 26
    And I type text "B" for option 2 for question 26
    And I select Option 1 as correct answer for question 26

    And I click Add question button
    And I select "Single-Choice" type of question for question 27
    And I type text "What is QA?" of question 27
    And I type text "A" for option 1 for question 27
    And I type text "B" for option 2 for question 27
    And I select Option 1 as correct answer for question 27

    And I click Add question button
    And I select "Single-Choice" type of question for question 28
    And I type text "What is QA?" of question 28
    And I type text "A" for option 1 for question 28
    And I type text "B" for option 2 for question 28
    And I select Option 1 as correct answer for question 28

    And I click Add question button
    And I select "Single-Choice" type of question for question 29
    And I type text "What is QA?" of question 29
    And I type text "A" for option 1 for question 29
    And I type text "B" for option 2 for question 29
    And I select Option 1 as correct answer for question 29

    And I click Add question button
    And I select "Single-Choice" type of question for question 30
    And I type text "What is QA?" of question 30
    And I type text "A" for option 1 for question 30
    And I type text "B" for option 2 for question 30
    And I select Option 1 as correct answer for question 30

    And I click Add question button
    And I select "Single-Choice" type of question for question 31
    And I type text "What is QA?" of question 31
    And I type text "A" for option 1 for question 31
    And I type text "B" for option 2 for question 31
    And I select Option 1 as correct answer for question 31

    And I click Add question button
    And I select "Single-Choice" type of question for question 32
    And I type text "What is QA?" of question 32
    And I type text "A" for option 1 for question 32
    And I type text "B" for option 2 for question 32
    And I select Option 1 as correct answer for question 32

    And I click Add question button
    And I select "Single-Choice" type of question for question 33
    And I type text "What is QA?" of question 33
    And I type text "A" for option 1 for question 33
    And I type text "B" for option 2 for question 33
    And I select Option 1 as correct answer for question 33

    And I click Add question button
    And I select "Single-Choice" type of question for question 34
    And I type text "What is QA?" of question 34
    And I type text "A" for option 1 for question 34
    And I type text "B" for option 2 for question 34
    And I select Option 1 as correct answer for question 34

    And I click Add question button
    And I select "Single-Choice" type of question for question 35
    And I type text "What is QA?" of question 35
    And I type text "A" for option 1 for question 35
    And I type text "B" for option 2 for question 35
    And I select Option 1 as correct answer for question 35

    And I click Add question button
    And I select "Single-Choice" type of question for question 36
    And I type text "What is QA?" of question 36
    And I type text "A" for option 1 for question 36
    And I type text "B" for option 2 for question 36
    And I select Option 1 as correct answer for question 36

    And I click Add question button
    And I select "Single-Choice" type of question for question 37
    And I type text "What is QA?" of question 37
    And I type text "A" for option 1 for question 37
    And I type text "B" for option 2 for question 37
    And I select Option 1 as correct answer for question 37

    And I click Add question button
    And I select "Single-Choice" type of question for question 38
    And I type text "What is QA?" of question 38
    And I type text "A" for option 1 for question 38
    And I type text "B" for option 2 for question 38
    And I select Option 1 as correct answer for question 38

    And I click Add question button
    And I select "Single-Choice" type of question for question 39
    And I type text "What is QA?" of question 39
    And I type text "A" for option 1 for question 39
    And I type text "B" for option 2 for question 39
    And I select Option 1 as correct answer for question 39

    And I click Add question button
    And I select "Single-Choice" type of question for question 40
    And I type text "What is QA?" of question 40
    And I type text "A" for option 1 for question 40
    And I type text "B" for option 2 for question 40
    And I select Option 1 as correct answer for question 40

    And I click Add question button
    And I select "Single-Choice" type of question for question 41
    And I type text "What is QA?" of question 41
    And I type text "A" for option 1 for question 41
    And I type text "B" for option 2 for question 41
    And I select Option 1 as correct answer for question 41

    And I click Add question button
    And I select "Single-Choice" type of question for question 42
    And I type text "What is QA?" of question 42
    And I type text "A" for option 1 for question 42
    And I type text "B" for option 2 for question 42
    And I select Option 1 as correct answer for question 42

    And I click Add question button
    And I select "Single-Choice" type of question for question 43
    And I type text "What is QA?" of question 43
    And I type text "A" for option 1 for question 43
    And I type text "B" for option 2 for question 43
    And I select Option 1 as correct answer for question 43

    And I click Add question button
    And I select "Single-Choice" type of question for question 44
    And I type text "What is QA?" of question 44
    And I type text "A" for option 1 for question 44
    And I type text "B" for option 2 for question 44
    And I select Option 1 as correct answer for question 44

    And I click Add question button
    And I select "Single-Choice" type of question for question 45
    And I type text "What is QA?" of question 45
    And I type text "A" for option 1 for question 45
    And I type text "B" for option 2 for question 45
    And I select Option 1 as correct answer for question 45

    And I click Add question button
    And I select "Single-Choice" type of question for question 46
    And I type text "What is QA?" of question 46
    And I type text "A" for option 1 for question 46
    And I type text "B" for option 2 for question 46
    And I select Option 1 as correct answer for question 46

    And I click Add question button
    And I select "Single-Choice" type of question for question 47
    And I type text "What is QA?" of question 47
    And I type text "A" for option 1 for question 47
    And I type text "B" for option 2 for question 47
    And I select Option 1 as correct answer for question 47

    And I click Add question button
    And I select "Single-Choice" type of question for question 48
    And I type text "What is QA?" of question 48
    And I type text "A" for option 1 for question 48
    And I type text "B" for option 2 for question 48
    And I select Option 1 as correct answer for question 48

    And I click Add question button
    And I select "Single-Choice" type of question for question 49
    And I type text "What is QA?" of question 49
    And I type text "A" for option 1 for question 49
    And I type text "B" for option 2 for question 49
    And I select Option 1 as correct answer for question 49

    And I click Add question button
    And I select "Single-Choice" type of question for question 50
    And I type text "What is QA?" of question 50
    And I type text "A" for option 1 for question 50
    And I type text "B" for option 2 for question 50
    And I select Option 1 as correct answer for question 50
      And I click Add question button
      And Message "No more 50 questions allowed" appears
    And I click Save button
    And I select quiz "test12345 test" from list of quizzes
    And I scroll down the web page by the visibility of the element
    Then I verify total number equal 50
    Then I delete the quiz "test12345 test"

  Scenario:Quiz - Total Questions - Doesn't allow to save a quiz with no questions.

    When I navigate to the login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click on "Quizzes" on left menu
    And I click on Create New Quiz button
    And I type quiz title "test12345 test"
    And I click Add question button
    And I click Save button
    Then Message "Quiz is not completed" appears

