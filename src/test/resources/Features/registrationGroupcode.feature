@fullRegression
Feature:Registration - Group Code
  Scenario: Registration - Group Code - Alphabetical characters
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "ABC"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Group Code - Numbers
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "123"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Group Code - Field is required
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "This field is required" appears

  Scenario: Registration - Group Code - Min 1 character
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "A"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Group Code - Max 6 characters
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "Abcdef"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Group Code - Max characters +1
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "Abcdefg"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "Too long. Should be no more than 6 characters" appears

  Scenario: Registration - Group Code - Whitespace are not allowed (between letters)
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "Ab cd"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespace are not allowed (at the beginning of the group code)
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code " Abcd"
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - Group Code - Whitespace are not allowed (at the end of the group code)
    When I open "registration" page
    And I type first name "Ivan"
    And I type last name "Ivanov"
    And I type email "student@gmail.com"
    And I type group code "Abcd "
    And I type password "12345Abc"
    And I type to confirm password "12345Abc"
    And I click on Register Me button
    Then text "Whitespaces are not allowed" appears