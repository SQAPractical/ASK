Feature: Smoke
  Scenario:  Multiple Choice Question Text
    Given I open "login" page
    When I type email "qa.sofi@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then Text "Sofia Teacher" appears
    And I click Quizzes button
    And I click Create New Quiz button
    And I type "QMC-Other -- DO NOT DELETE000" in the Title Of The Quiz *
    And I click Add Question button
    And I click Multiple Choice radio button
    And I type "What is software testing?1234!@#$" in Question *
    And I type "A fault or problem in something or someone that spoils that thing or person or causes it, him, or her not to work correctly" in Option one
    And I type "A physical condition in which something is wrong with a part of someone's body" in Option two
    And I click Option one
    And I click Save
    And I click "QMC-Other -- DO NOT DELETE000"
    And I click Preview on quiz "QMC-Other -- DO NOT DELETE000"
    Then Text "What is software testing?1234!@#$" appears
    And I delete quiz "QMC-Other -- DO NOT DELETE000"


