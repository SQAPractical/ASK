Feature: Options in Student's account - Change Name
  Scenario: Username allows alphanumeric and special characters
    When I navigate to login page
    And I type email "student6@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click Change Your Name button
    And I type "Irina Ivaniva123@$#" into New Name field
    And I click Change button
    Then New name "Irina Ivaniva123@$#" is displayed on user's card
# Return back name as it was
    And I click Change Your Name button
    And I type "Vladimir Ivanov" into New Name field
    And I click Change button
    Then New name "Vladimir Ivanov" is displayed on user's card
