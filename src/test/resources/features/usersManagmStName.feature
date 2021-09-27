@FullRegression
Feature: Options in Student's account - Change Name
  Background:
    When I navigate to login page
    And I type email "student6@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click "Settings" menu item
    And I click Change Your Name button

  Scenario: Username allows alphanumeric and special characters
    And I delete name in New Name field
    And I type "Irina Ivaniva123@$#" into New Name field
    And I click Change button
    Then New name "Irina Ivaniva123@$#" is displayed on user's card
# Return back name as it was
    And I click Change Your Name button
    And I delete name in New Name field
    And I type "Vladimir Ivanov" into New Name field
    And I click Change button
    Then New name "Vladimir Ivanov" is displayed on user's card

  Scenario: Name field can’t be empty
    And I delete name in New Name field
    And I click Change button
    Then Text "This field is required" appears

  Scenario: Name can be 100 characters long
    And I delete name in New Name field 
    And I type "Onehundredcharactersssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss" into New Name field
    And I click Change button
    Then New name "Onehundredcharactersssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss" is displayed on user's card
# Return back name as it was
    And I click Change Your Name button
    And I delete name in New Name field
    And I type "Vladimir Ivanov" into New Name field
    And I click Change button
    Then New name "Vladimir Ivanov" is displayed on user's card

  Scenario: Name cannot be more than 100 characters long
    And I delete name in New Name field
    And I type "Onehundredonecharactersssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss" into New Name field
    And I click Change button
    Then Text "Too long. Should be no more than 100 characters" appears

  Scenario: Name cannot have trailing whitespace character
    And I type Space into New Name field
    And I click Change button
    Then Text "Whitespaces are not allowed" appears

  Scenario: Name cannot have leading whitespace character
    And I select and cut existed name from name field
    And I type Space into New Name field
    And I paste name back into New Name field
    And I click Change button
    Then Text "Whitespaces are not allowed" appears
# Return back name as it was
    And I click Change Your Name button
    And I delete name in New Name field
    And I type "Vladimir Ivanov" into New Name field
    And I click Change button
    Then New name "Vladimir Ivanov" is displayed on user's card