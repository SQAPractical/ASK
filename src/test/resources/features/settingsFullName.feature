Feature: Settings - Full Name
  Scenario: Settings - Full Name - Latin Character
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete previous name
    And I type new name "adasd wfdqwaf"
    And I click Change button
    Then new name is "adasd wfdqwaf"

  Scenario: Settings - Full Name -Required
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete old full name
#    And I delete user name
#    And I click on the field
    And I click Change button
    Then Massage "This field is required" Appears

  Scenario: Settings - Full Name - Max 100 Char
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete user name
    And I type new name "fasfadsgdsgdsgagdfgfasfadsgdsggdsgagdfgfasfadsgdsgds gdfgfasfadsgdsgdsgagdfgfasfadsgdsgdsgagdfgfasfa"
    And I click Change button
    Then new name is "fasfadsgdsgdsgagdfgfasfadsgdsggdsgagdfgfasfadsgdsgds gdfgfasfadsgdsgdsgagdfgfasfadsgdsgdsgagdfgfasfa"


  Scenario: Settings - Full Name - Min 2 characters plus 1 space between two words
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete user name
    And I type new name "V A"
    And I click Change button
    Then new name is "V A"

  Scenario: Settings - Full Name - Trailing spaces are not allowed
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete user name
    And I type new name "V A "
    And I click Change button
    Then Massage "Should contain only first and last name latin characters" Appears

  Scenario: Settings - Full Name - Leading spaces are not allowed
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete user name
    And I type new name " V A"
    And I click Change button
    Then Massage "Should contain only first and last name latin characters" Appears

  Scenario: Settings - Full Name - Alphanumeric and special characters
    Given I navigate to login page
    When I type email "dsgsdssdd@gmail.com" on login page
    And I type password "14609530qQ" on login page
    And I click Sign in button
    And I click Settings
    And I click Change your name
    And I delete user name
    And I type new name "Alekse! Ivan0v"
    And I click Change button
    Then Massage "Should contain only first and last name latin characters" Appears








