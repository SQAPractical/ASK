@EndToEnd @Sanity
Feature: Teacher Creates Quiz with 5 Multiple-Choice questions

  Scenario: Create Quiz with 5 Multiple-Choice questions
    Given I navigate to "http://ask-stage.portnov.com/#/login"
    When I type  email "yaymend@movx.us"
    And I type  password "12345"
    And I click Login button
    And I click button Quizzes
    And I click button Create New Quiz
    And I type title of the quiz "JJJ"
    And I click Add Question button
    And I click Multiple-Choice radio-button for question "one"
    And I type text of question "one"
#    And I type Question "AAA"
#    And I click Add Option button
#    And I type Option#1 "AA - Correct Answer"
#    And I type Second Option "BB"
#    And I type Option#3 "CC-Correct Answer"
#    And I click Option1 radio-button
#    And I click Option3 radio-button
#    And I click Add Question button
#    And I click Multiple-Choice radio-button
#    And I click Add Option button
#    And I type Question "AAA2"
#    And I type Option#1 "AA2"
#    And I type Option#2 "BB2 - Correct Answer"
#    And I type Option#3 "CC2 - Corrent Answer"
#    And I click Option2 radio-button
#    And I click Option3 radio-button
#    And I click Add Question button
#    And I click Multiple-Choice radio-button
#    And I type Question "AAA3"
#    And I click Add Option button
#    And I type Option#1 "AA3"
#    And I type Second Option "BB3 - Correct Answer"
#    And I type Option#3 "CC3 - Correct Answer"
#    And I click Option2 radio-button
#    And I click Option3 radio-button
#    And I click Add Question button
#    And I click Multiple-Choice radio-button
#    And I type Question "AAA4"
#    And I click Add Option button
#    And I type Option#1 "AA4"
#    And I type Second Option "BB4 - Correct Answer"
#    And I type Option#3 "CC4 - Correct Answer"
#    And I click Option1 radio-button
#    And I click Option2 radio-button
#    And I click Add Question button
#    And I click Multiple-Choice radio-button
#    And I type Question "AAA4"
#    And I click Add Option button
#    And I type Option#1 "AA4"
#    And I type Second Option "BB4 - Correct Answer"
#    And I type Option#3 "CC4 - Correct Answer"
#    And I click Option1 radio-button
#    And I click Option2 radio-button
#    And I click Save button
