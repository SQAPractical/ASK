Feature: Quiz Editor Features
  Scenario: ACJ-367 Multiple Choice Question - Other text area
    Given I open "login" page
    When I type email "assessment.portnov@gmail.com"
    And I type password "12345"
    And I click Sign in button
    And Text "Jane Doe" appears
    And I click Quizzes in the left menu
    And I click Create New Quiz button
    And I type "Quiz PC-07272020A" in Title Of The Quiz *
    And I add first "Multiple-Choice" question saying "What is the answer?"
    And I type "Choice A" in Option one
    And I type "Choice B" in Option two
    And I click Include Other text area option for this question
    And I click Option one radio button
    And I click preview button
    Then Text field Other appears
    And I click close button
    And I click Save button