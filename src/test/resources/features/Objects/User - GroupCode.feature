Feature: User - Group Code

  Scenario: User - Group code - Alphanumeric & Special characters
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code "T123#"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "You have been Registered." message appears

  Scenario: User - Group code - Required field
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code ""
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "This field is required" message appears in group code field

  Scenario: User - Group code - Minimum character
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code "g"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "You have been Registered." message appears

  Scenario: User - Group code - Max length of characters
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code "TestML"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "You have been Registered." message appears

  Scenario: User - Group code - Max character length +1
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code "TestMLA"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "Should be no more than 6 characters" message appears

  Scenario: User - Group code - White spaces forbidden
    Given I open registration page
    And I type first name "Yulia"
    And I type last name "K123"
    And I type email "anna@gmail.com"
    And I type group code "Test 1"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register Me button
    Then "Please Enter valid group code" message appears









