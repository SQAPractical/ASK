@fullRegression
Feature: QuizTitle
  Scenario: Quiz - Title -characters: Alphanumeric & Sp. character
    When I will navigate to login page
    And I will type email "teacher1@gmail.com"
    And I will type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "acfvcv1345#$%"
    Then Element with text "add_" is displayed

  Scenario: Quiz - Title - field is required
    When I will navigate to login page
    And I will type email "teacher1@gmail.com"
    And I will type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title ""
    And I click on some place on page
    Then Text "This field is required" appears

  Scenario: Quiz - Title - Min 1 Char
    When I will navigate to login page
    And I will type email "teacher1@gmail.com"
    And I will type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "q"
    Then Element with text "add_" is displayed

  Scenario: Quiz - Title - Max 128 Char
    When I will navigate to login page
    And I will type email "teacher1@gmail.com"
    And I will type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "vvvbfcd2erty67%v$bvgghhhfdsd7uijvvdfddxcgghhbvffcvccdcggggghjhfccgjmvhfgfccggcccgggccgccgchvhvhvhvhvhvhvvvhvhvhvhvhvhvvvvvvvvvvv"
    Then Element with text "add_" is displayed

  Scenario: Quiz - Title - Max 128+1 Char
    When I will navigate to login page
    And I will type email "teacher1@gmail.com"
    And I will type password "12345Abc"
    And I click on Sign In button at login page
    And I click on Quizzes button
    And I click on Create New Quiz button
    And I type Quiz Title "vvvbfcd2erty67%v$bvgg1hhhfdsd7uijvvdfddxcgghhbvffcvccdcggggghjhfccgjmvhfgfccggcccgggccgccgchvhvhvhvhvhvhvvvhvhvhvhvhvhvvvvvvvvvvv"
    Then Text "To long should be max 128 char" appears