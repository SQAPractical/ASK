Feature: Registration - First name
  Scenario: First name registration form
    Given I open url
    Then I type First Name "Lada" in registration form
    And I type Last Name "ID" in registration form
    And I type Email "lada111@gmail.com" in registration form
    And I type Group Code "011" in registration form
    And I type Password "12345" in registration form
    And I type Confirm password "12345" in registration form
    Then I click on button "Register me" in registration form
    Then I should see message "You have been Registered."

   Scenario: First name - White spaces are not allowed
     Given I open url
     Then I type First Name "La da" in registration form
     And I click on button "Register me" in registration form
     And I should see message "Whitespaces are not allowed"

    Scenario: First name - required 
      Given I open url
      Then I click on button "Registered me" in registration form
      Then I should see message "This field is required"





