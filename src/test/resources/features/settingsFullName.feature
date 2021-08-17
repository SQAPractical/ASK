Feature: Settings - Full Name

  Scenario: Settings - Full Name - Allowable characters: Alphanumeric and special characters / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "Dm1try Te%%st12345"
    And I click on Change button
    Then user's name changed to "Dm1try Te%%st12345"

  Scenario: Settings - Full Name - Full name field required, can’t be empty / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I click on Change button
    Then Message "This field is required" appears

  Scenario: Settings - Full Name - Max 100 characters including 1 space between two words - Positive Test / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshj smithsmithsmithsmithsmithsmithsmithsmithsmithsmit"
    And I click on Change button
    Then user's name is changed to "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshj smithsmithsmithsmithsmithsmithsmithsmithsmithsmit"

  Scenario: Settings - Full Name - Max 100 characters including 1 space between two words - Negative Test / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjv smithsmithsmithsmithsmithsmithsmithsmithsmithsmithv"
    And I click on Change button
    Then Message "Too long. Should be no more than 100 characters" appears

  Scenario: Settings - Full Name - Min 2 characters plus 1 space between two words / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "a b"
    And I click on Change button
    Then user's name is changed to "a b"

  Scenario: Settings - Full Name - leading spaces are not allowed / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name " John Smith"
    And I click on Change button
    Then Message "Should contain only first and last name alphanumeric and special characters" appears

  Scenario: Settings - Full Name - Trailing spaces are not allowed / Student Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "John Smith  "
    And I click on Change button
    Then Message "Should contain only first and last name alphanumeric and special characters" appears

  Scenario: Settings - Full Name - Allowable characters: Alphanumeric and special characters / Teacher Account
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "Dm1try Te%%st12345"
    And I click on Change button
    Then user's name is changed to "Dm1try Te%%st12345"

  Scenario: Settings - Full Name - Full name field required, can’t be empty / Teacher Account
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I click on Change button
    Then Message "This field is required" appears

  Scenario: Settings - Full Name - Max 100 characters including 1 space between two words - Positive Test / Teacher Account
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshj smithsmithsmithsmithsmithsmithsmithsmithsmithsmit"
    And I click on Change button
    Then user's name is changed to "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshj smithsmithsmithsmithsmithsmithsmithsmithsmithsmit"

  Scenario: Settings - Full Name - Max 100 characters including 1 space between two words - Negativ
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "joshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjoshjv smithsmithsmithsmithsmithsmithsmithsmithsmithsmithv"
    And I click on Change button
    Then Message "Too long. Should be no more than 100 characters" appears

  Scenario: - Full Name - Min 2 characters plus 1 space between two words / Teacher Account
    When I navigate to login page
    And I type email "student1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name "a b"
    And I click on Change button
    Then user's name is changed to "a b"

  Scenario: Settings - Full Name - leading spaces are not allowed / Teacher Account
    When I navigate to login page
    And I type email "teacher1@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    And I click Settings
    And I click on Change Your Name button
    And I delete name
    And I type new name " John Smith"
    And I click on Change button
    Then Message "Should contain only first and last name alphanumeric and special characters" appears

Scenario: Settings - Full Name - Trailing spaces are not allowed / Teacher Account
  When I navigate to login page
  And I type email "teacher1@gmail.com"
  And I type password "12345Abc"
  And I click Sign In button
  And I click Settings
  And I click on Change Your Name button
  And I delete name
  And I type new name "John Smith  "
  And I click on Change button
  Then Message "Should contain only first and last name alphanumeric and special characters" appears



    
