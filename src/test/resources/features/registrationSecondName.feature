
#AC-493 / AC-189 original Registartion Last Name
Feature: Registration - Last Name


  Scenario: Registration - Last name - Latin characters
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears


  Scenario: Registration - Last name - Field is required
    When I navigate to registration page
    And I type first name "Ivan"
    And I click on last name field
    And I click on email filed
    Then Text "This field is required" appears

  Scenario: Registration - Last name - Max 100 char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Testtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

    #There is a bug that let user to create Second Name with more than 100 characters
  Scenario: Registration - Last name - 101 chars are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Testttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Too long. Should be no more than 100 characters" appears

  Scenario: Registration - Last name - Min 1 char
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "T"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Last name - Whitespaces are not allowed
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test Test"
    And I click on email field
    Then Text "Should contain only latin characters" appears

    Scenario: Registration - Last Name - Alphanumeric but no special characters
      When I navigate to registration page
      And I type first name "Ivan"
      And I type last name "Test@!%^&"
      And I click on email field
      Then Text "Should contain only latin characters" appears


