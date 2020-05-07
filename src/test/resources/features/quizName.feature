@Regression
Feature: Quiz Name

  Scenario Outline: Quiz
    Given I open login page
    When I type email <email>
    And I type password <pass>
    And I click Sign in button
    And I click on Quizzes menu item
    And I click Create new quiz button
    Then I type quiz name  <title>
    And I click on Add Question button
    Then I wait <sec> sec
    And I click radio button Single choice
    And type <question> in question field
    And I type option one "IJ Maven"
    And I type option two "BDD"
    Then I wait 2 sec
    And I click radio button Option 1
    And I click Save button


    Examples:
      | email                             | pass            | title         | sec | question      |
      | "umzingelte@polioneis-reborb.com" | "mynewpassword" | "IJ cucumber" | 2   | "IJ cucumber" |
 #     | "umzingelte@polioneis-reborb.com" | "mynewpassword" | "IJ cucumber" | 2   | "IJ cucumber" |


