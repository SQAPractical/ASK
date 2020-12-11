Feature: Registration - Email
  Scenario: Registration - Email - Correct format
    When I open "registration"  page
    And I type first name "Ivan"
    And I type last name "Ivanodfv"
    And I type email "irtdfdftnov@gmail.com"
    And I type group code "007"
    And I type password "11df11"
    And I confirm password "11df11"
    And I click Register Me button
    Then text "You have been Registered." appears


