Feature: Registration - Group Code
  @iurii
  Scenario: Registration - Group Code - alphanumeric and special char
    Given I navigate to login page
    When I login as a teacher
    And I wait for 1 sec
    And I create new quiz "New1234"
    And I wait for 2 sec
    And I go to quizzes
    And I wait for 2 sec
    Then quiz with name "New1234" should be present
#
#
#   Scenario: Quiz can be created with 50 question
#     Given I navigate to login page
#     And I login as a teacher
#     And I wait for 2 sec
#     When I go to quizzes
#     And I wait for 2 sec
#     And I click "Create New Quiz" button
#     And I wait for 2 sec
#     And I type "Qname123" into element with xpath "//input[@formcontrolname='name']"
#     And I add question to quiz
#     And I add question to quiz
#     And I add question to quiz
#     And I add question to quiz
#     And I click on element with xpath "//span[contains(text(),'Save')]"
#     And I go to quizzes
#     And I wait for 2 sec
#     Then quiz with name "Qname123" should be present
#
#     Scenario:Quiz can't be created without questions
#       Given I navigate to login page
#       And I login as a teacher
#       And I wait for 2 sec
#       When I go to quizzes
#       And I wait for 2 sec
#       And I click "Create New Quiz" button
#       And I wait for 2 sec
#       And I type "Qname123" into element with xpath "//input[@formcontrolname='name']"
#       Then element with xpath "//*[contains(text(),'Save')" should not be present
